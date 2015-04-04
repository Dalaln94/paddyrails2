class PagesController < ApplicationController
  def home
  end

  def about
  end

  def menu
    @restaurant = Restaurant.find(params[:id])
  end
  

end
