class PostsController < ApplicationController

    def index
        post = Post.all 
        render json: post
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            post.save
        render json: post
        else
            render json: {message:"Please post a pic"}
        end
            byebug
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    private
    def post_params
    params.require(:post).permit(:user_id, :picture, :likes)
    end
end
