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
    [park_1]
  end

end
