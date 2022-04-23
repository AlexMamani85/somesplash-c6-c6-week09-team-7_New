class CategoriesController < ApplicationController
  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/:id
  def show
    @category = Category.find(params[:id])
    @photos = @category.photos
  end

  # GET /categories
  def new
    @category = Category.new
  end

  # POST /category
  def create
    @category = Category.new(category_params)
    
    if @category.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /categories/:id
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    
    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name, :description ) #:cover # cover after implement ActiveAttachment
  end
end
