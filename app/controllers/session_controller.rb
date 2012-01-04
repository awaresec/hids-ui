class SessionController < ApplicationController
  skip_before_filter :check_authentication, :only => [ :new, :create ]
  
  def new
    render :layout => false
  end
  
  def create
    if params[:login] and params[:password]
      user = User.find_by_login(params[:login])
      if !user.nil? and user.password_is?(params[:password])
        session[:user_id] = user.id
      else
        flash[:error] = "Bad login/password"
      end
    end
    redirect_to root_url
  end
  
  def destroy
    reset_session
    redirect_to :action => :new
  end
end
