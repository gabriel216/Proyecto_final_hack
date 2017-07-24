class WelcomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]

  def index
  	@categories_carousel = Category.where("status= ? AND priority= ?", true, 10)  
 	  @categories = Category.where(status: true).order(:priority).reverse
  end

  def new
  	
  end

  def create
  	redirect_to new_user_session_path
  end
end
