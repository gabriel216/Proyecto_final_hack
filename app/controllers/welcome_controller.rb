class WelcomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]

  def index
  	@categories_carousel = Category.where("status= ? AND priority= ? 
      AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
      AND avatar3_file_name <> ?", 
      true, 10, '', '', '')
    @categories_evento = Category.where("status= ?  
      AND category_type = ?", true, 'Evento').order(:priority).reverse
    @categories_foro = Category.where("status= ?  
      AND category_type = ?", true, 'Foro').order(:priority).reverse
    @categories_curso = Category.where("status= ?  
      AND category_type = ?", true, 'Curso').order(:priority).reverse
    @categories_taller = Category.where("status= ?  
      AND category_type = ?", true, 'Taller').order(:priority).reverse
    @categories_documental = Category.where("status= ?  
      AND category_type = ?", true, 'Documental').order(:priority).reverse
    @categories_otros = Category.where("status= ?  
      AND category_type = ?", true, 'Otro').order(:priority).reverse
 	  @categories = Category.where(status: true).order(:priority).reverse
  end

  def new
  	
  end

  def create
  	redirect_to new_user_session_path
  end
end
