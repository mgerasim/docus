#coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  private
   def authorize
   unless User.find_by_id(session[:user_id])
   flash[:notice] = "Пожалуйста, пройдите авторизацию"
   redirect_to login_path
   end
end

end
