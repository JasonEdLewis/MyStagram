class CommentsController < ApplicationController



    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end
    def create
        comment = Comment.create(comment_params)
        if comment.valid?
            comment.save
            render json: comment
        else 

        end 
    end


    private

    def comment_params
    params.require(:comment).permit(:post_id, :content, :followee_id)
    end
end
