class UsersController < ApplicationController
  
  get "/signup" do
    erb :"/users/signup.html"
  end

  post "/signup" do
    user = User.new(params)
    if user.save
      session[:user_id] = user.id
      redirect "/countries"
    end
    redirect "/signup"
  end

  get "/login" do
    erb :"/users/login.html"
  end

  post "/login" do 
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/countries"
    end
    redirect "/login"
  end

  post "/logout" do
    session.clear
    redirect "/countries"
  end

  get "/users/:id" do
    redirect_if_not_logged_in 
    @user = User.find(params[:id])
    erb :"/users/show.html"
  end
  
  private
    def redirect_if_not_logged_in 
       if !logged_in?
         redirect "/"
      end
    end
end
