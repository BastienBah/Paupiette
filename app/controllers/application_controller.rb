class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    sign_up_attributes = [:prenom, :nom, :email, :telephone, :password, :password_confirmation, :role, :numero_rue, :rue, :complement_adresse, :code_postal, :ville, :quartier]
    update_attributes = [:prenom, :nom, :email, :telephone, :password, :password_confirmation, :role, :numero_rue, :rue, :complement_adresse, :code_postal, :ville, :quartier]
    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: update_attributes)
  end

end
