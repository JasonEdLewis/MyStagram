class PostsController < ApplicationController

    def index
        posts = Post.all 
       
        render json: posts.to_json(:include => {:user => {:only =>[:id, :username]}, :comments =>{:only=> [:id,:post_id,:content,:followee_id]}}, :except=> [:created_at, :updated_at])
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
   
    def update
        post = Post.find_by(id: params[:id])
        post.update(update_post_params)
        
        render json: post
    end

    private

    def post_params
        params.permit(:user_id, :picture, :likes, :caption)
    end

    def update_post_params
        params.permit(:id,:picture, :likes, :caption)
    end
end
