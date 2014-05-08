class ApplicationController < ActionController::Base
  before_filter :authorize
  before_filter :customerauthorize
  protect_from_forgery :only => [ ]
  
  protected

    def authorize
      @events = Event.all
      unless User.find_by_id(session[:user_id])
        redirect_to login_admin_url, :notice => "Please log in"
      end
    end
    
    def customerauthorize
      @events = Event.all
      unless Customer.find_by_id(session[:customer_id])
        redirect_to login_url, :notice => "Please log in"
      end
    end
    

    
end
