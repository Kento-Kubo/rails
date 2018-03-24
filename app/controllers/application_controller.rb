class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_current_user
  
  def set_current_user
  user= User.find_by(id:session[:user_id])
  teacher = Teacher.find_by(id:session[:teacher_id])
  if user
    @current_user = User.find_by(id:session[:user_id])
    
  elsif teacher
    @current_user = Teacher.find_by(id:session[:teacher_id])
  end
  
  end
  
  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to root_url
    end
  end
  
  def forbid_login_user
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/main/index")
    end
  end
  
  protect_from_forgery with: :exception
  include SessionsHelper

end
