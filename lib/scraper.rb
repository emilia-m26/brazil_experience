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
  
#   def self.scrape_gastronomy
#     url = "https://www.atlasobscura.com/unique-food-drink/brazil"
#     doc_gastronomy = Nokogiri::HTML(open(url))

#     name = doc_gastronomy.css(".content-card-text")[0].text.split("\n")[4]
#     #name of food 
    
#     description = doc_gastronomy.css(".content-card-text")[0].text.split("\n")[6]
#     #short description of food
#   end

 end
  
