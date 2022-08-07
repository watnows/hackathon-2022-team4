class ApplicationController < ActionController::Base
  # ログイン後に遷移するpathを設定
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  def after_sign_in_path_for(resource)
    exams_path
  end

  def after_sign_up_path_for(resource)
    exams_path
  end
 
  # ログアウト後に遷移するpathを設定
  def after_sign_out_path_for(resource)
    tool_index_path
  end

  protected 

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :passward, :password_confirmation, :content_type, [student_attributes: [:age,:grade,:user_id]]])
  # end
end
