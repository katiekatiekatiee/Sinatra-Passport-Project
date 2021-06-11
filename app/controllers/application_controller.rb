require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "jkjskf6543"
    set :show_exceptions, false
  end

  get "/" do
    erb :welcome
  end

  error ActiveRecord::RecordNotFound do
    erb :error
  end

  not_found do
    status 404
    erb :error
  end

  helpers do
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
      !!current_user
    end

  end
  

end
