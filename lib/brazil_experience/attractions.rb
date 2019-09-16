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
  
  # def self.list_attractions(attractions)
  #   #should return instances of list of attractions to explore
  #   self.list_attractions = self.all.each_with_index do |attraction,index|
  #     puts "#{index + 1}. #{attraction.name}"
  #   end
  # end
  
  
  
end