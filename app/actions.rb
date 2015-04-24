enable :sessions

helpers do
  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end

get '/' do
  erb :index
end

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
    @current_user = User.where(username: params[:username], password:  params[:password]).first
    puts @current_user
    session[:user_id] = @current_user.id
    redirect '/'
  else
    erb :'user/new'
  end

end

get '/login' do
  erb :login
end

post '/login' do
  @current_user = User.where(username: params[:username], password:  params[:password]).first
  session[:user_id] = @current_user.id
  redirect '/'
end



