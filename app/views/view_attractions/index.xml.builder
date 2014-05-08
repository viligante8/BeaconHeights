xml = Builder::XmlMarkup.new
xml.instruct!
xml.attractions do
  @attractions.each { |attraction|
  	xml.attraction do
      xml.id attraction.id
      xml.name attraction.name
      xml.min_height attraction.min_height
      xml.fee attraction.fee
      xml.description attraction.description
      xml.attraction_type attraction.attraction_type
      xml.max_tix_hour attraction.max_tix_hour
      xml.wait_time attraction.wait_time
      xml.is_fastpass attraction.is_fastpass
      xml.photo_url attraction.photo
    end
  }
end