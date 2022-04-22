class CategoriesController < ApplicationController
  # GET /cagegories
  def index
    @categories = Category.all
  end

  # DELETE /categories/:id
  def destroy
    @categories = Category.find(params[:id])
    @categories.destroy
    
    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name, :description ) #:cover # cover after implement ActiveAttachment
  end
end
