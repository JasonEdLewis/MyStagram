class ApplicationController < ActionController::API

    def fallback_index_html
        render :file => 'public/index.html'
      end

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
        #   byebug
       JWT.decode token, 'hexidecimal', true , { algorithm: 'HS256'} 
    end

    def current_user
        User.find( decoded_token[0]["user_id"])
    end

end


