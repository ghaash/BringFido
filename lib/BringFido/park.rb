class BringFido::Park

attr_accessor :name, :location, :description

@@parks = []

def initialize(name, location, description)
  @name = name
  @location = location
  @description = description
  @@parks << self
end

def self.all
  @@parks
end

def self.find_by_number(index)
    BringFido::Park.all[index]
  end

end
