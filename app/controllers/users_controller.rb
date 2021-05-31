class UsersController < ApplicationController

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
end
