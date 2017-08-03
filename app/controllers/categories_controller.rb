class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy, :show1]
  require 'date'


  def index
    if current_user.email == 'opcionvenezuelaorg@gmail.com'
        case params[:key]
          when "Prioridad-Up" then
           @categories = Category.all.order("priority DESC, start_date ASC").reverse
          when "Prioridad-Down" then
           @categories = Category.all.order("priority DESC, start_date ASC")
          when "Tipo-Up" then
            @categories = Category.all.order("category_type DESC, priority DESC, start_date ASC").reverse
          when "Tipo-Down" then
            @categories = Category.all.order("category_type DESC, priority DESC, start_date ASC")
          when "Status-Up" then
            @categories = Category.all.order("status, start_date ASC").reverse
          when "Status-Down" then
            @categories = Category.all.order("status, start_date ASC")
          when "FechadeInicio-Up" then
            @categories = Category.all.order("start_date,priority DESC")
          when "FechadeInicio-Down" then          
            @categories = Category.all.order("start_date, priority DESC").reverse  
          else
            @categories = Category.all
      end
    else  
      aux = (User.find_by(id: current_user.id).id)
      @categories = Category.where(user_id: aux).all
    end
  end


  def show

  end


  def show1

  end


  def search
    hoy = Date.today
    @categories_carousel = Category.where("status= ? AND priority= ? 
    AND avatar1_file_name <> ? AND avatar2_file_name <> ? 
    AND avatar3_file_name <> ? AND start_date >= ?", 
    true, 10, '', '', '',hoy).order("priority DESC, start_date ASC").reverse
    @categories_evento = Category.where("status= ?  
      AND category_type = ? AND start_date = ?", true, 'Evento', params[:search]).order("priority DESC, start_date ASC")
    @categories_foro = Category.where("status= ?  
      AND category_type = ? AND start_date = ?", true, 'Foro', params[:search]).order("priority DESC, start_date ASC")
    @categories_curso = Category.where("status= ?  
      AND category_type = ? AND start_date = ?", true, 'Curso', params[:search]).order("priority DESC, start_date ASC")
    @categories_taller = Category.where("status= ?  
      AND category_type = ? AND start_date = ?", true, 'Taller', params[:search]).order("priority DESC, start_date ASC")
    @categories_documental = Category.where("status= ?  
      AND category_type = ? AND start_date = ?", true, 'Documental', params[:search]).order("priority DESC, start_date ASC")
    @categories_otros = Category.where("status= ?  
      AND category_type = ? AND start_date = ?", true, 'Otro', params[:search]).order("priority DESC, start_date ASC")
    @categories = Category.where(status: true).order("priority DESC, start_date ASC")
    @categories_total =  [['Eventos',@categories_evento],
                            ['Foros',@categories_foro],
                            ['Cursos',@categories_curso],
                            ['Talleres',@categories_taller],
                            ['Documentales',@categories_documental],
                            ['Otros',@categories_otros]]    
    render welcome_index_path 
  end



  def new
    puts "Pase por new"
    @category = Category.new
  end

  def edit
    puts "Pase por edit"
  end


  def create
    @category = Category.new(category_params)
    @category.user_id = User.find_by(id: current_user.id).id
    
    respond_to do |format|
      if @category.save
        user1 = User.find_by(email: 'opcionvenezuelaorg@gmail.com')
        user2 = current_user
        titulo = @category.title
        CategoryMailer.publication(user1, user2, titulo).deliver
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    puts 'Pase por update'
    if current_user.email != 'opcionvenezuelaorg@gmail.com'
      @category.status = false
      @category.priority = 0
    end  
    # else
    #     if :status == true && :priority != 0
    #       user1 = User.find_by(email: 'opcionvenezuelaorg@gmail.com')
    #       user2 = current_user
    #       titulo = @category.title
    #       CategoryMailer.aproved_publication(user1, user2, titulo).deliver
    #     end  
    # end  
    respond_to do |format|
      if @category.update(category_params)
        format.html {redirect_to categories_path}
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end  
  end

  def destroy
    if @category.destroy
      redirect_to categories_path
    else
      format.json { render json: @category.errors, status: :unprocessable_entity }
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:category_type, :title, :description, :avatar1, :avatar2, 
        :avatar3, :start_date, :duration, :start_hour, :end_hour, :location, :cost, :phone, :web_site,:status, :priority,:id)  
    end
end