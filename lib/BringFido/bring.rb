class BringFido::Bring

attr_accessor :name, :location, :description

def self.parks
#this method needs to return the scraped dog parks
  self.scrape_parks
# BringFido::ParkScraper.new("https://www.bringfido.com/attraction/parks/")
end

def self.scrape_parks
  puts ""
  puts "oh look at these pawsome parks!"
  parks = []
  parks << self.scrape_bringfido
  parks
end

def self.scrape_bringfido
doc = Nokogiri::HTML(open("https://www.bringfido.com/attraction/parks/"))
parks = self.new
parks.name = doc.xpath("//div[@class='info-ctn']/div[@class='info']/h1/a").text
parks.location = doc.xpath("//div[@class='info-ctn']/div[@class='info']/div[@class='subtitle']/a").text
parks.description = doc.xpath("//div[@class='info-ctn']/div[@class='overlay-info']/div[@class='description character-limit']/@text").text
parks
end
end
