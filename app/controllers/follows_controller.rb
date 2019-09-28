class FollowsController < ApplicationController

    def index
        followers = Follow.all
        render json: followers, except: [:created_at,:updated_at]

        
    end

    def show

    end
end



# def show
#     post = Post.find(params[:id])
#     render json:post.to_json(:include => {:user => {:only =>[:id, :username]}, :comments =>{:only=> [:post_id,:content,:followee_id]}}, :except=> [:created_at, :updated_at])
# end