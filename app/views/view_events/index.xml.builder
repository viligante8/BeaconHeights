xml = Builder::XmlMarkup.new
xml.instruct!
xml.events do
  @events.each { |event|
  	xml.event do
      xml.id event.id
      xml.name event.name
      xml.description event.description
      xml.event_type event.event_type
      xml.arena event.arena
      xml.performers event.performers
      xml.event_date event.event_date
      xml.event_time event.event_time
    end
  }
end