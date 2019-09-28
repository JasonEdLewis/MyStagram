class PostsController < ApplicationController

    def index
        posts = Post.all 
        render json: PostSerializer.new(posts)
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            post.save
        render json: PostSerializer.new(post)
        else
            render json: {message:"Please post a pic"}
        end
            byebug
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def edit
        post = post = Post.find(params[:id])
        post.update(post_params)
    end

    private
    def post_params
    params.require(:post).permit(:user_id, :picture, :likes)
    end
end
