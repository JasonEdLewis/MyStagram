class AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        if(user && user.authenticate(params[:password]))
         encoded_token = encode_token(user_payload(user))
         render json: {token: encoded_token}
        else 
            render json: {message:"Sorry, wrong Username or Password"}
        end
    
    end
end
