#encoding: utf-8
class AuthController < ApplicationController
  def login
  	session[:user_id] = nil
    if request.post?
      user = User.authenticate(params["user"][:id], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to(:controller => "page", :action => "Main")
      else
        flash[:notice] = "Неверная комбинация имя-пароль"
      end
    end
  end

  def logout
  	session[:user_id] = nil
    flash[:notice] = "Вы вышли из административной области "
    redirect_to login_path
  end

  def add_user
  	   flash.now[:notice] = "Пользователь зарегистрирован"
	   @user = User.new(params[:user])
	   if request.post? and @user.save
	   flash.now[:notice] = "Пользователь #{@user.name} зарегистрирован"
	# @user = User.new
   end
  end
end
