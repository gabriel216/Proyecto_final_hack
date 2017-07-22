class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    aux = (Client.find_by(user_id: current_user.id).id)
    # puts "aux #{aux}"
    # puts "clase #{aux.class}"
    # puts "inspect #{aux.inspect}"
    @categories = Category.where(client_id: aux).all
    # puts "@categories #{@categories}"
     # puts "clase #{@categories.class}"
     # puts "inspect #{@categories.first.inspect}"
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
    puts "Pase por el  new"
  end

  # GET /categories/1/edit
  def edit
    puts "pase por el edit"
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)
    @category.client_id = Client.find_by(user_id: current_user.id).id
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render json: @category.errors }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
      if @category.update(category_params)
        redirect_to categories_path
      else
        render 'edit'
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
        :avatar3, :start_date, :duration, :start_hour, :end_hour, :location, :cost, :id)  
    end
end