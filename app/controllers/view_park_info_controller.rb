class ViewParkInfoController < ApplicationController
  skip_before_filter :authorize
  skip_before_filter :customerauthorize
  
  def index
    @events = Event.all
  end
end
