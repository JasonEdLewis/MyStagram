class AuthController < ApplicationController

    def login
    #    byebug
        user = User.find_by(username: params[:username])
        isAuthenticated = user.authenticate(params[:password])
        if isAuthenticated

           encoded_token = encode_token(user_payload(user))
         render json: {token: encoded_token}

        else 
            render json: {error: "#{errors.full_messages}"}
        end
    
    end
end
