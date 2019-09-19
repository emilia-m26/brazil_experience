class BrazilExperience::Gastronomy
  attr_accessor :name, :description
  
  @@all=[]
  
  def initialize(name, description)
    @name = name
    @description = description
    save  
  end
  
  def self.load
    Scraper.scrape_gastronomy.each do |hash|
      self.new(hash[:name], hash[:description])
    end
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  # def self.list_gastronomy
  #   #should return instances of list of food items to explore
  #   puts "These are your food choices."
  # end
 
  
  
end
