class ViewAttractionsController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :customerauthorize
  
  def index
    @events = Event.all
    @attractions = Attraction.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml # index.xml.builder  
    end

  end

end
