class PhotosController < ApplicationController
    # GET /photos/:id
    def show
      @photos = Photo.find(params[:id])
    end
  
    # GET /photos/new
    def new
      @photo = Photo.new
      @category = Category.find(params[:category_id])
    end
  
    # POST /photos
    def create
      @photo = Photo.new(photo_params)
      
      if @photo.save
        redirect_to category_path(@photo.category)
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    # GET /categories/id/edit
    def edit
      @photo = Photo.find(params[:id])
      @category = Category.find(params[:category_id])
    end
  
    # PATCH/PUT /departments/:id
    def update
      @photo = Photo.find(params[:id])
  
      if @photo.update(photo_params)
        redirect_to category_path(@photo.category)
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    # DELETE /categories/:id
    def destroy
      @photo = Category.find(params[:id])
      @photo.destroy
      
      redirect_to categories_path, status: :see_other
    end
  
    private
  
    def photo_params
      params.require(:photo).permit(:title, :description, :category_id, :image) 
    end
end
