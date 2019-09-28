class FollowsController < ApplicationController

    def index
        followers = Follow.all
        render json: followers
    end
end
