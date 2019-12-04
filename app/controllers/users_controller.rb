class UsersController < ApplicationController

    def index
        users =User.all 
        render json: users,except: [:password_digest,:created_at,:updated_at]
    end


    def show
        user = User.find(params[:id])
        render json: user,except: [:password_digest,:created_at,:updated_at]
    end


    def create
        
        user = User.create(user_params)
        if user.valid?
        encoded_token = encode_token(user_payload(user))
         render json: {token: encoded_token}

        else  
        render json: {message: "Please provide valid username and/ password"}
        end
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(update_params)   
        render json: user     
    end
    

    def profile

        #EVENTUALLY USE THIS
        if current_user
            render json: current_user
        end
       
        #WHERE 👆🏽 CAME FROM BEFORE IT WAS SENT TO APP CONTROLLER
        # token = request.headers["Authorization"]
        # decoded_token = JWT.decode token, 'hexidecimal', true , { algorithm: 'HS256'}
        # user_id =  decoded_token[0]["user_id"]
        # user = User.find(user_id)

        # render json: current_user
    #    puts request.headers

    # token = request.headers["Authorization"].split("\"")[1]

    end  

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: "Your profile has been deleted"}
    end
    
    
    private

    def user_params
        params.permit(:username, :password,:picture,:bio,:email,:city,:state,:zip)
    end
    def update_params
        params.permit(:id,:username,:picture,:bio,:email,:city,:state,:zip)
    end

end

