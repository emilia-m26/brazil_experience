require "open-uri"
require "nokogiri"
require "pry"

class Scraper
  
 def self.scrape_attractions
    attractions_page = "https://www.atlasobscura.com/things-to-do/brazil/places"
    doc = Nokogiri::HTML(open(attractions_page))
    
    
    doc.css(".content-card-text").each do |attraction|
      location = attraction.css(".detail-sm.place-card-location").text
      description = attraction.css(".subtitle-sm").text
      name= attraction.css(".title-underline").text
       binding.pry
    
    #to change attraction - only change first index - second index dicates location of information in content
     name = doc.css(".content-card-text")[0].text.split("\n")[2]
    #name of first attraction
    
    location = doc.css(".content-card-text")[0].text.split("\n")[1]
    #city of first attraction
  
    description = doc.css(".content-card-text")[0].text.split("\n")[3]
    #description of first attraction
    
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
  
