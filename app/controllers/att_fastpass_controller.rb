class AttFastpassController < ApplicationController
  skip_before_filter :customerauthorize
  
  def index
    @events = Event.all
    @attractions = Attraction.all
    @fastpasses = Fastpass.all
    @attraction = Attraction.find(session[:att_id])
    
    @attfastpasses = Array.new
    @fastpasses.each do |fp|
      if fp.attractions_id==@attraction.id && fp.created_at.strftime("%m/%d/%Y")==Time.now.strftime("%m/%d/%Y")
        @attfastpasses << fp
      end
    end
  end

end
