class CountriesController < ApplicationController

  get "/countries" do
    @countries = Country.all
    #binding.pry
    erb :"/countries/index.html"
  end

  get "/countries/new" do
    @countries = Country.all
    erb :"/countries/new.html"
  end

  post "/countries" do
    @country = Country.new(params)
    @country.user_id = session[:user_id]
    @country.save
    redirect "/countries"
  end

  get "/countries/:id" do
    @country = Country.find_by(id: params[:id])
    erb :"/countries/show.html"
  end

  get "/countries/:id/edit" do
    erb :"/countries/edit.html"
  end

  patch "/countries/:id" do
    redirect "/countries/:id"
  end

  delete "/countries/:id/delete" do
    redirect "/countries"
  end
end
