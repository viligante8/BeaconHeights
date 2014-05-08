class SubmitFastPassController < ApplicationController
  skip_before_filter :authorize
  
  
  def index
    @events = Event.all
    @attractions = Attraction.all
    @fast_passes = Fastpass.all
    
    if session[:counter] == 1 # First time on Submit_Fast_Pass
      session[:avail] = nil
      #session[:requested] = 0
      @attraction = Attraction.find(params[:attraction_id])
      session[:attraction_id] = params[:attraction_id]
    else # Second time, thus we need the value of requested
      @attraction = Attraction.find(session[:attraction_id])
      #session[:requested] = params["requested"]
    end
    
  end
  
  def avail_times
      # Get information needed
      @attraction = Attraction.find(session[:attraction_id])
      timenow = Time.now
      @requested = params[:requested].to_i
      session[:requested] = params[:requested]
      avail = Array.new
      
      unless Fastpass.all.nil?
        @fast_passes = Fastpass.all
        
        # Loop through each hour from now to closing
        for hour in timenow.hour+1..20
          reserved=0
          
          # Find out if the number of tickets reserved is maxed out
          for tix in @fast_passes.each
            if @attraction.max_tix_hour == reserved
              break
            end
            if tix.attractions_id == @attraction.id && tix.hour  == hour
              reserved = reserved + 1
            end
          end
          
          # Find out if the quantity requested exceeds availability
          if ((@attraction.max_tix_hour-reserved) > @requested)
            time2 = Time.utc(2010, "jan", 1, hour, 0, 0)
            avail << time2
          end
        end
        
        
      else
        for hour in timenow.hour+1..20
          time2 = Time.utc(2010, "jan", 1, hour, 0, 0)
          avail << time2
        end
      end
      
      session[:avail] = avail
      session[:counter] = 0
      redirect_to (submit_fast_pass_path )
    end
    
    
    def add_pass
      timeselected = params[:hour] # Hour as in %H
      requested = session[:requested].to_i
      
      for i in 1..requested # for each number requested, create new fastpass
        Fastpass.create(
          :attractions_id => session[:attraction_id].to_i,
          :cust_id => session[:customer_id],
          :hour => timeselected.to_i,
          :is_used => 0)
      end
      
      redirect_to (cust_fastpass_path)
    end

end
