class WelcomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]
  require 'date'

  def index


     puts "buscar   = #{params[:buscar]}"
    hoy = Date.today
    manana = Date.today + 1
    semana = Date.today + 7
    mes = hoy.next_month 
    case params[:buscar]
        when "dia" then
              puts "Pase por dia"
              @categories_carousel = Category.where("status= ? AND priority= ? 
                AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
                AND avatar3_file_name <> ?", 
                true, 10, '', '', '')
              @categories_evento = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Evento', hoy).order(:priority).reverse
              @categories_foro = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Foro', hoy).order(:priority).reverse
              @categories_curso = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Curso', hoy).order(:priority).reverse
              @categories_taller = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Taller', hoy).order(:priority).reverse
              @categories_documental = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Documental', hoy).order(:priority).reverse
              @categories_otros = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Otro', hoy).order(:priority).reverse
              @categories = Category.where("status = true AND start_date = ?", hoy).order(:priority).reverse
        when "manana" then
              puts "Pase por manana"
              @categories_carousel = Category.where("status= ? AND priority= ? 
                AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
                AND avatar3_file_name <> ?", 
                true, 10, '', '', '')
              @categories_evento = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Evento', manana).order(:priority).reverse
              @categories_foro = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Foro', manana).order(:priority).reverse
              @categories_curso = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Curso', manana).order(:priority).reverse
              @categories_taller = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Taller', manana).order(:priority).reverse
              @categories_documental = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Documental', manana).order(:priority).reverse
              @categories_otros = Category.where("status= ?  
                AND category_type = ? AND start_date = ?", true, 'Otro', manana).order(:priority).reverse
              @categories = Category.where("status = true AND start_date = ?", manana).order(:priority).reverse
        when "semana" then
              puts "Pase por semana"
              @categories_carousel = Category.where("status= ? AND priority= ? 
                AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
                AND avatar3_file_name <> ?", 
                true, 10, '', '', '')
              @categories_evento = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Evento',hoy, semana).order(:priority).reverse
              @categories_foro = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Foro',hoy, semana).order(:priority).reverse
              @categories_curso = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Curso',hoy, semana).order(:priority).reverse
              @categories_taller = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Taller',hoy, semana).order(:priority).reverse
              @categories_documental = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Documental',hoy, semana).order(:priority).reverse
              @categories_otros = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Otro',hoy, semana).order(:priority).reverse
              @categories = Category.where("status = ? AND start_date BETWEEN ? AND ?" ,true,  hoy, semana).order(:priority).reverse
        when "mes" then
              puts "Pase por mes"
              @categories_carousel = Category.where("status= ? AND priority= ? 
                AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
                AND avatar3_file_name <> ?", 
                true, 10, '', '', '')
              @categories_evento = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Evento',hoy, mes).order(:priority).reverse
              @categories_foro = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Foro',hoy, mes).order(:priority).reverse
              @categories_curso = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Curso',hoy, mes).order(:priority).reverse
              @categories_taller = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Taller',hoy, mes).order(:priority).reverse
              @categories_documental = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Documental',hoy, mes).order(:priority).reverse
              @categories_otros = Category.where("status= ?  
                AND category_type = ? AND start_date BETWEEN ? AND ?", true, 'Otro',hoy, mes).order(:priority).reverse
              @categories = Category.where("status = ? AND start_date BETWEEN ? AND ?" ,true,  hoy, mes).order(:priority).reverse
        else
            puts "Pase por else"
            @categories_carousel = Category.where("status= ? AND priority= ? 
              AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
              AND avatar3_file_name <> ? AND start_date >= ?", 
              true, 10, '', '', '',hoy).order("priority DESC, start_date ASC")
            @categories_evento = Category.where("status= ?  
              AND category_type = ? AND start_date >= ?", true, 'Evento', hoy).order("priority DESC, start_date ASC")
            @categories_foro = Category.where("status= ?  
              AND category_type = ? AND start_date >= ?", true, 'Foro', hoy).order("priority DESC, start_date ASC")
            @categories_curso = Category.where("status= ?  
              AND category_type = ? AND start_date >= ?", true, 'Curso', hoy).order("priority DESC, start_date ASC")
            @categories_taller = Category.where("status= ?  
              AND category_type = ? AND start_date >= ?", true, 'Taller', hoy).order("priority DESC, start_date ASC")
            @categories_documental = Category.where("status= ?  
              AND category_type = ? AND start_date >= ?", true, 'Documental', hoy).order("priority DESC, start_date ASC")
            @categories_otros = Category.where("status= ?  
              AND category_type = ? AND start_date >= ?", true, 'Otro', hoy).order("priority DESC, start_date ASC")
            @categories = Category.where(status: true).order("priority DESC, start_date ASC")
      end
      @categories_total =  [['Eventos',@categories_evento],
                            ['Foros',@categories_foro],
                            ['Cursos',@categories_curso],
                            ['Talleres',@categories_taller],
                            ['Documentales',@categories_documental],
                            ['Otros',@categories_otros]]
      render welcome_index_path 
  end

  def new
  	
  end

  def create
  	redirect_to new_user_session_path
  end
end
