class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_sign_up_params, if: :devise_controller?
    private
    def configure_sign_up_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email , :password , :password_confirmation ,:role ,:name , :username])
        devise_parameter_sanitizer.permit(:account_update,keys: [ :email , :password , :password_confirmation ,:role ,:name, :username])
    end
end
