class BrazilExperience::Gastronomy
  
  
  def self.list_gastronomy
    #should return instances of list of food items to explore
    puts "These are your food choices."
    
    gastronomy_1 = self.new 
    gastronomy_1.name = "Ice Cream Bean"
    gastronomy_1.description = "Short Description of Food"
    
    gastronomy_1.url = "https://www.atlasobscura.com/foods/ice-cream-bean"
  end
  
  
end
