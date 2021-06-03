class UsersController < ApplicationController

  get "/users/:id" do
    erb :"/users/show.html"
  end

  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  patch "/users/:id" do
    redirect "/users/:id"
  end

  delete "/users/:id/delete" do
    redirect "/users"
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
  
end
