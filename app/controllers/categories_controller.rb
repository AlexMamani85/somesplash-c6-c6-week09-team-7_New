class CategoriesController < ApplicationController
  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories

  def new
    @category = Category.new
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
