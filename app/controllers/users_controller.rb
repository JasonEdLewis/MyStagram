class UsersController < ApplicationController
    def create
        user =User.create(user_params)
        if user.valid?

        encoded_token = encode_token(user_payload(user))
         render json: {token: encoded_token}

        else  
        
        end
    end


    private
    def user_params
        params.permit(:username, :password)
    end

end
