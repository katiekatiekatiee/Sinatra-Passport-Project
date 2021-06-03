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

end
