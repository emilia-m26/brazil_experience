class BrazilExperience::Attractions
  attr_accessor :name, :location, :description
  
    @@all=[]
  
  def initialize(name, location, description)
    @name = name
    @location = location
    @description = description
    save  
  end
  
  def self.load 
    Scraper.scrape_attractions.each do |hash|
      self.new(hash[:name], hash[:location],hash[:description])
    end
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end