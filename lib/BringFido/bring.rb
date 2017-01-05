class BringFido::Bring

  attr_accessor :name, :bones, :location, :url

  def self.parks
    #this method needs to return the scraped dog parks
    self.scrape_parks
# BringFido::ParkScraper.new("https://www.bringfido.com/attraction/parks/")
end

def self.scrape_parks
    puts "oh look at these pawsome parks!"
    parks = []
   parks << self.scrape_bringfido
   parks
end

def self.scrape_bringfido

  
  doc = Nokogiri::HTML(open("https://www.bringfido.com/attraction/parks/"))

  parks = self.new
  parks.name = doc.search("h1").text
#  price = doc.search("price ng-binding ng-scope.").text
#binding.pry
parks
end

end
#    park_1 = self.new
#    park_1.name = "Grape Street Dog Park"
#    park_1.bones = "5 bones!"
#    park_1.location = "Balbo Park, East Side, San Diego, CA, US"
#    park_1.url = "https://www.bringfido.com/attraction/parks/ "

#    park_2 = self.new
#    park_2.name = "Nate's Point Dog Park"
#    park_2.bones = "3 bones!"
#    park_2.location = "Balboa Park, West Side, San Diego, CA, US"
#    park_2.url = "https://www.bringfido.com/attraction/parks/ "

#    park_3 = self.new
#    park_3.name = "Kearney Mesa Dog ParK"
#    park_3.bones = "5 bones!"
#    park_3.location = "Kearney Mesa, San Diego, CA, US"
#    park_3.url = "https://www.bringfido.com/attraction/parks/ "

#    [park_1, park_2, park_3]
