class CategoriesController < ApplicationController
  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/:id
  def show
    @category = Category.find(params[:id])
    @photos = @category.photos
    @comment = @category.comments
    @comment_new = Comment.new
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # POST /categories
  def create
    @category = Category.new(category_params)
    
    if @category.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /categories/id/edit
  def edit
    @category = Category.find(params[:id])
  end

  # PATCH/PUT /departments/:id
  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to categories_path
    else
      render "Edit", status: :unprocessable_entity
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
    params.require(:category).permit(:name, :description, :cover) 
  end
end
