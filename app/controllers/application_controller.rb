class ApplicationController < ActionController::API

    def encode_token (payload)
        JWT.encode payload, 'hexidecimal', 'HS256'
    end

    def user_payload(user)
        {user_id: user.id}
    end
    



end
