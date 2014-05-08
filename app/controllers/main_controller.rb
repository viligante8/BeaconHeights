class MainController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :customerauthorize
  
  def index
    @events = Event.all
    @attractions = Attraction.all
  end

end
