xml = Builder::XmlMarkup.new
xml.instruct!
xml.fastpasses do
  if(@fastpasses)
    @fastpasses.each { |fastpass|
      xml.fastpass do
        xml.id fastpass.id
        xml.attractions_id fastpass.attractions_id
        xml.cust_id fastpass.cust_id
        xml.hour fastpass.hour
        xml.is_used fastpass.is_used
      end
    }
  end
end