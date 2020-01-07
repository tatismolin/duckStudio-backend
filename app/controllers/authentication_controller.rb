class AuthenticationController < ApplicationController

    skip_before_action :authenticate

    def login 
        user = User.find_by({username: params[:username]})

        if(!user)
            render status: :unauthorized
        else
            if(!user.authenticate(params[:password]))
                render status: :unauthorized
            else
                secret_key = Rails.application.secret_key_base[0]
                token = JWT.encode({
                    user_id: user.id,
                }, secret_key)

                render json: {token: token, user: user}
            end
        end
    end

end
