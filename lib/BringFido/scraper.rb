class BringFido::Scraper

def self.scrape_parks
doc = Nokogiri::HTML(open("https://www.bringfido.com/attraction/parks/"))
doc.search(".object_snapshot").each do |park|
  name = park.search("h1").text.split(/\n/).uniq.join
  location = park.search(".subtitle").text.split(/\n/).join
  description = park.search(".description").attr("text").value.strip
  BringFido::Park.new(name, location, description)
end
end

def self.scrape_more_info(input)
  info = BringFido::Park.all[input.to_i - 1].location
  info2 = BringFido::Park.all[input.to_i - 1].location
end

end
