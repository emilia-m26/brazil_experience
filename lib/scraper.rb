require "open-uri"
require "nokogiri"
require "pry"

class Scraper
  
def self.scrape_attractions
    attractions_page = "https://www.atlasobscura.com/things-to-do/brazil/places"
    doc = Nokogiri::HTML(open(attractions_page))
    
    
    doc.css(".content-card-text").each do |attraction|
      name= attraction.css(".title-underline").text
      location = attraction.css(".detail-sm.place-card-location").text
      description = attraction.css(".subtitle-sm").text
     
      Attractions.new(name,location,description)
    
#     BrazilExperience::Attractions.new(name, location, description)
    end

  end
  
    def self.scrape_gastronomy
      
      gastronomy_page = "https://www.atlasobscura.com/unique-food-drink/brazil"
      doc = Nokogiri::HTML(open(gastronomy_page))

      doc.css(".content-card-text").each do |food|
        
      name= food.css(".title-underline").text
      description = food.css(".content-card-subtitle").text
    #binding.pry 
     
      Gastronomy.new(name, description)
  end
  
  end
 end
  