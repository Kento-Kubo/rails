module SessionsHelper
  def log_in(user,true_or_false)
    session[:user_id] = user.id
    session[:teacher] = true_or_false
  end

  def current_user
    if session[:teacher]
      @current_user ||= Teacher.find_by(id: session[:user_id])
    else
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    session.delete(:teacher)
    @current_user = nil
  end
end
