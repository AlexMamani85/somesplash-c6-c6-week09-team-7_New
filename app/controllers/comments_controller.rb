class CommentsController < ApplicationController
    # POST /categories/:category_id/comments
    # POST /photos/:photo_id/comments
    def create
        if params[:category_id]
            category = Category.find(params[:category_id])
            comment = category.comments.new(comment_params)
        elsif params[:photo_id]
            photo = Photo.find(params[:photo_id])
            comment = photo.comments.new(comment_params)
        end

        if comment.save
            p "No saved!!"
            render json: comment, status: :created
        else
            p "Saved!!"
            render json: { error: critic.error.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        if params[:category_id]
            category = Category.find(params[:category_id])
            comment = category.comments.find(params[:id])
        elsif params[:photo_id]
            photo = Photo.find(params[:photo_id])
            comment = photo.comments.find(params[:id])
        end

        comment.delete
        render json: nil, status: :no_content
    end

    def update
        comment = Comment.find(params[:id])
        if params[:category_id]
            category = Category.find(params[:category_id])
            comment = category.comments.find(params[:id])
        elsif params[:photo_id]
            photo = Photo.find(params[:photo_id])
            comment = photo.comments.find(params[:id])
        end

        if comment.update(comment_params)
            render json: comment
        else
            render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
