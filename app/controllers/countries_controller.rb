class CountriesController < ApplicationController

  # GET: /countries
  get "/countries" do
    erb :"/countries/index.html"
  end

  # GET: /countries/new
  get "/countries/new" do
    erb :"/countries/new.html"
  end

  # POST: /countries
  post "/countries" do
    redirect "/countries"
  end

  # GET: /countries/5
  get "/countries/:id" do
    erb :"/countries/show.html"
  end

  # GET: /countries/5/edit
  get "/countries/:id/edit" do
    erb :"/countries/edit.html"
  end

  # PATCH: /countries/5
  patch "/countries/:id" do
    redirect "/countries/:id"
  end

  # DELETE: /countries/5/delete
  delete "/countries/:id/delete" do
    redirect "/countries"
  end
end
