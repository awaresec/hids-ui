class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :check_authentication
  
  protected
  
  def is_authenticated?
    session[:user_id]
  end
  
  def check_authentication
    if is_authenticated?
      @user = User.find(session[:user_id])
    else
      flash[:error] = flash[:error]
      redirect_to '/login'
    end
  end
end
