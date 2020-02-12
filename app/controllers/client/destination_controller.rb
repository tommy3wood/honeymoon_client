class Client::DestinationController < ApplicationController

  def index
    response = HTTP.get("http://localhost:3000/api/destinations")
    @destinations = response.parse
    render 'index.html.erb'
  end

  def show
    response = HTTP.get("http://localhost:3000/api/destinations/#{params[:id]}")
    @recipe = response.parse
    render 'show.html.erb'
  end

  def edit
    response = HTTP.get("http://localhost:3000/api/destinations/#{params[:id]}")
    @recipe = response.parse
    render 'edit.html.erb'
  end

  def udpate
    
  end

end
