class PostsController < ApplicationController

    def index
        posts = Post.all 
       
        render json: posts.to_json(:include => {:user => {:only =>[:id, :username]}, :comments =>{:only=> [:post_id,:content,:followee_id]}}, :except=> [:created_at, :updated_at])
    end

    def show
        post = Post.find(params[:id])
        render json:post.to_json(:include => {:user => {:only =>[:id, :username]}, :comments =>{:only=> [:post_id,:content,:followee_id]}}, :except=> [:created_at, :updated_at])
    end

    def create
        
        post = Post.create(post_params)
      
        if post.valid?
            post.save
        render json: post
        else
            render json: {message:"Please post a pic"}
        end
           
    end

   

    def edit
        post = post = Post.find(params[:id])
        post.update(post_params)
    end

    private
    def post_params
    params.permit(:user_id, :picture, :likes, :caption)
    end
end
