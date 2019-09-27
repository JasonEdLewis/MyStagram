class ApplicationController < ActionController::API

    def encode_token (payload)
        token = JWT.encode payload, 'hexidecimal', 'HS256'
    end

    def user_payload(user)
        {user_id: user.id}
    end
    

 render json: {token: token}

end
