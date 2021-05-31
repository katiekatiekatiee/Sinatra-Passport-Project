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

end
