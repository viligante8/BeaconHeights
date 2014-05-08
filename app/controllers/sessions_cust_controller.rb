class SessionsCustController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :customerauthorize
  
  def new
    @events = Event.all
  end

  def create
    if customer = Customer.authenticate(params[:email], params[:password])
      session[:customer_id] = customer.id
      redirect_to main_url
    else
      redirect_to login_url, :alert => "Invalid customer/password combination"
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to main_url, :notice => "Logged out"
  end
end
