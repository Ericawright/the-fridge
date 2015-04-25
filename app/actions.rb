enable :sessions

helpers do
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
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
    # user = User.where(username: params[:username], password:  params[:password]).first
    # puts @current_user
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
  user = User.where(username: params[:username], password:  params[:password]).first
  session[:user_id] = user.id
  redirect '/'
end

get '/logout' do
  session.delete :user_id
  redirect '/'
end



