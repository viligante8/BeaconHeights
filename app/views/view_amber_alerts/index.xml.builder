xml = Builder::XmlMarkup.new
xml.instruct!
xml.amber_alerts do
  @amber_alerts.each { |amber_alert|
    xml.amber_alert do
      xml.id amber_alert.id
      xml.name amber_alert.name
      xml.sex amber_alert.sex
      xml.race amber_alert.race
      xml.age amber_alert.age
      xml.hair_color amber_alert.hairColor
      xml.description amber_alert.description
      xml.last_seen_location amber_alert.lastSeenLocation
      xml.last_seen_time amber_alert.lastSeenTime
      xml.submit_time amber_alert.submitTime
    end
  }
end