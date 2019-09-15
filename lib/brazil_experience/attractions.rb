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
  
  # def self.list_attractions
  #   #should return instances of list of attractions to explore
  #   puts "These are your attraction choices."
    
    # attraction_1 = self.new 
    # attraction_1.name = "Largo do Boticario"
    # attraction_1.location = "Rio de Janeiro, Brazil"
    # attraction_1.description = "Short Description of Attraction"
    
    #attraction_1.url = "https://www.atlasobscura.com/places/largo-do-boticario"
    
  # end
  
  
end