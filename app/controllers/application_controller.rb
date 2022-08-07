class ApplicationController < ActionController::Base
  # ログイン後に遷移するpathを設定
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
end
