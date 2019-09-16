class BrazilExperience::Attractions
  attr_accessor :name, :location, :description
    @@all=[]
  
  def initialize(name, location, description)
    @name = name
    @location = location
    @description = description
    save  
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.list_attractions
    #should return instances of list of attractions to explore
    #self.list_attractions =
    
  end
  
  
end