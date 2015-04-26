require 'httparty'

enable :sessions

helpers do
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def body_class
    @body_class || ''
  end

end

get '/' do
  erb :index
end

####################### user stuff#############

get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.new(
    username: params[:username],
    password: params[:password],
    email: params[:email]
    )
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'user/new'
  end
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.where(username: params[:username], password: params[:password]).first
  session[:user_id] = user.id
  redirect '/'
end

get '/logout' do
  session.delete :user_id
  redirect '/'
end


########################## yummly stuff #########################
get '/yummly' do
  erb :yummly
end

post '/results' do
  gather_params = []
  params[:ingred].each do |x|
    x.gsub(' ', '+')
    gather_params << x
  end
  
  @formatted_params = gather_params.join('&allowedIngredient[]=')

  @query = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=dde5d0a1&_app_key=415fb0f76cf84cce66da1807fe54369d&allowedIngredient[]=#{@formatted_params}")

  erb :results
end

get '/showyummly/:id' do
  @specific_query = HTTParty.get("http://api.yummly.com/v1/api/recipe/#{params[:id]}?_app_id=dde5d0a1&_app_key=415fb0f76cf84cce66da1807fe54369d")
  erb :'showyummly'
end


####################### local stuff #############################

post '/search' do
  @display_result = []
  Recipe.all.each do |recipe|
    if recipe.ingredients.count <= params[:ingredients].length
      if recipe.ingredients.all? {|ingredient| params[:ingredients].include?(ingredient.name)}
        @display_result << recipe
      end
    end
  end
  erb :search
end

get '/showlocal/:id' do
  @specific_result = Recipe.find(params[:id])
  erb :'showlocal'
end











