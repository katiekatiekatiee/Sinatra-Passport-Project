require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "jkjskf6543"
  end

  get "/" do
    erb :welcome
  end

  get "/signup" do
    erb :"/users/signup.html"
  end

  post "/signup" do
    user = User.new(params)
    if user.save
      session[:user_id] = user.id
      redirect :"/countries"
    end
    redirect :"/signup"
  end

  get "/login" do
    erb :"users/login"
  end

  post "/login" do 
    user = User.find_by(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/countries"
    else
      redirect "/login"
    end
  end

  post "/logout" do
    session.clear
    redirect "/countries"
  end

end
