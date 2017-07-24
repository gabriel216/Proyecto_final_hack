class WelcomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]

  def index
 	@categories = Category.where(status: true).all
  end

  def new
  	
  end

  def create
  	redirect_to new_user_session_path
  end
end
