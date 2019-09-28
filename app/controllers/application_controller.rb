class ApplicationController < ActionController::API

    def encode_token (payload)
        JWT.encode payload, 'hexidecimal', 'HS256'
    end

    def user_payload(user)
        {user_id: user.id}
    end

    def token 
      request.headers["Authorization"]
    end

    def decoded_token
        decoded_token = JWT.decode token, 'hexidecimal', true , { algorithm: 'HS256'} 
    end

    def current_user
        User.find( decoded_token[0]["user_id"])
    end

end



#token = request.headers["Authorization"]
# user_id =  decoded_token[0]["user_id"]
# user = User.find(user_id)

# render json: user