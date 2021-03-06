class SessionsController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :customerauthorize
  
  def new
    @events = Event.all
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to main_url
    else
      redirect_to login_admin_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to main_url, :notice => "Logged out"
  end
end
