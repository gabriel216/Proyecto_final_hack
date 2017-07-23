class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    aux = (Client.find_by(user_id: current_user.id).id)
    @categories = Category.where(client_id: aux).all
  end


  def show

  end


  def new
    @category = Category.new
  end

  def edit

  end


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