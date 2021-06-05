class CountriesController < ApplicationController

  get "/countries" do
    @countries = Country.all
    #binding.pry
    erb :"/countries/index.html"
  end

  get "/countries/new" do 
    redirect_if_not_logged_in 
    @countries = Country.all
    erb :"/countries/new.html"
  end

  post "/countries" do
    redirect_if_not_logged_in 
    @country = Country.new(params)
    @country.user_id = session[:user_id]
    @country.save
    redirect "/countries"
  end

  get "/countries/:id" do
    redirect_if_not_logged_in 
    @country = Country.find_by(id: params[:id])
    redirect_if_not_authenticated
    erb :"/countries/show.html"
  end

  get "/countries/:id/edit" do
    redirect_if_not_logged_in 
    @country = Country.find_by(id: params[:id])
    redirect_if_not_authenticated
    erb :"/countries/edit.html"
  end

  patch "/countries/:id" do #NOT WORKING
    redirect_if_not_logged_in 
    @country = Country.find_by(id: params[:id])
    redirect_if_not_authenticated
    @country.update(params["country"])
    redirect "/countries"
  end

  delete "/countries/:id" do #NOT WORKING
    redirect_if_not_logged_in
    @country = Country.find_by(id: params[:id])
    redirect_if_not_authenticated
    @country.destroy
    redirect "/countries"
  end

  private 
    def redirect_if_not_authenticated 
      if @country.user != current_user 
        redirect "/countries"
      end
    end

    def redirect_if_not_logged_in 
      if !logged_in?
        redirect "/countries"
      end
    end
end
