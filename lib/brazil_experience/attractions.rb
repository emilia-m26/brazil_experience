class BrazilExperience::Attractions
  
  def self.list_attractions
    #should return instances of list of attractions to explore
    puts "These are your attraction choices."
    
    attraction_1 = self.new 
    attraction_1.name = "Largo do Boticario"
    attraction_1.location = "Rio de Janeiro, Brazil"
    attraction_1.description = "Short Description of Attraction"
    
    attraction_1.url = "https://www.atlasobscura.com/places/largo-do-boticario"
    
  end
  
  
end