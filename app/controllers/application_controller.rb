class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :self_introduction, :profile_image])
  end
    
    private

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == 'admin' && password == '2222'
      end
    end
  
  
end
