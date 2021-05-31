class CountriesController < ApplicationController

  get "/countries" do
    erb :"/countries/index.html"
  end

  get "/countries/new" do
    erb :"/countries/new.html"
  end

  post "/countries" do
    redirect "/countries"
  end

  get "/countries/:id" do
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
