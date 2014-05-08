class CustFastpassController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @events = Event.all
    @attractions = Attraction.all
    @fastpasses = Fastpass.all
    @customer = Customer.find(session[:customer_id])
    
    @custfastpasses = Array.new
    @fastpasses.each do |fp|
      #if fp.cust_id.to_i==@customer.id && fp.is_used==0 && 7<fp.hour
      if fp.cust_id.to_i==@customer.id && fp.is_used==0 && Time.now.strftime("%H").to_i<fp.hour
        @custfastpasses << fp
      end
    end
  end

end
