class WelcomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
  	
  end

  def create
  	redirect_to new_user_session_path
  end
end
