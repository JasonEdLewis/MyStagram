class CommentsController < ApplicationController



    def index
        comments = Comment.all
        render json: comments,  except: [:created_at,:updated_at]
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end
    def create
        
        comment = Comment.create(comment_params)
        # byebug
        if comment.valid?
            comment.save
            render json: comment
        else 
            render json: {message: "Sorry, your comment wasnt entered correctly"}
        end 
    end


    private

    def comment_params
    params.permit(:post_id, :content, :followee_id)
    end
end
