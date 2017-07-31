class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy, :show1]
  
  def index
    if current_user.email == 'opcionvenezuelaorg@gmail.com'
        case params[:key]
          when "Prioridad-Up" then
            @categories = Category.all.order(:priority).reverse
          when "Prioridad-Down" then
            @categories = Category.all.order(:priority) 
          when "Tipo-Up" then
            @categories = Category.all.order(:category_type).reverse
          when "Tipo-Down" then
            @categories = Category.all.order(:category_type)   
          when "Status-Up" then
            @categories = Category.all.order(:status).reverse
          when "Status-Down" then
            @categories = Category.all.order(:status) 
          when "FechadeInicio-Up" then
            @categories = Category.all.order(:start_date)
          when "FechadeInicio-Down" then          
            @categories = Category.all.order(:start_date).reverse  
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