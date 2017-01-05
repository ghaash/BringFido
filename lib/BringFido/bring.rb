class BringFido::Bring

  attr_accessor :name, :bones, :location, :url

  def self.parks
    #this method needs to return the scraped dog parks
    puts "oh look at these pawsome parks!"

    park_1 = self.new
    park_1.name = "Grape Street Dog Park"
    park_1.bones = "5 bones!"
    park_1.location = "San Diego, CA, US"
    park_1.url = "https://www.bringfido.com/attraction/parks/ "

    park_2 = self.new
    park_2.name = "Nate's Point Dog Park"
    park_2.bones = "3 bones!"
    park_2.location = "San Diego, CA, US"
    park_2.url = "https://www.bringfido.com/attraction/parks/ "

    park_3 = self.new
    park_3.name = "Kearney Mesa Dog ParK"
    park_3.bones = "5 bones!"
    park_3.location = "San Diego, CA, US"
    park_3.url = "https://www.bringfido.com/attraction/parks/ "

    [park_1, park_2, park_3]
  end

end
