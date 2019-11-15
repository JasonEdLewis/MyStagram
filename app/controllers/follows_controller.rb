class FollowsController < ApplicationController

    def index
        followers = Follow.all
        render json: followers, except: [:created_at,:updated_at]
    end

    def show
        follow = Follow.find(params[:id])
        render json: follow, except: [:created_at,:updated_at]
    end

    def create
        follow.create(params)

    if follow.valid?
        follow.save
    else 
        render json: {message: "You can not follow this user"}
    end

    end
end



# def show
#     post = Post.find(params[:id])
#     render json:post.to_json(:include => {:user => {:only =>[:id, :username]}, :comments =>{:only=> [:post_id,:content,:followee_id]}}, :except=> [:created_at, :updated_at])
# end