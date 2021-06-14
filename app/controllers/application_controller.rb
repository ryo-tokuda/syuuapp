class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
   # before_action :basic_auth
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:nickname, :email, :birth_date, :first_name, :last_name, :first_name_kana, :last_name_kana,:university]
    )
  end
end
