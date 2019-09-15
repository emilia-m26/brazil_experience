require "open-uri"
require "nokogiri"
require "pry"

class Scraper
  
  def self.scrape_attractions
    doc = Nokogiri::HTML(open("https://www.atlasobscura.com/things-to-do/brazil/places"))
    
    doc.css(".content-card-text").each_with_index do |name, index|
      
         attraction_number = index + 1
       
         attractions.css(".content-card-text").each do |attraction|
    
    #to change attraction - only change first index - second index dicates location of information in content
     name = attraction.css(".content-card-text")[0].text.split("\n")[2]
    #name of first attraction
    
    location = attraction.css(".content-card-text")[0].text.split("\n")[1]
    #city of first attraction
  
    description = attraction.css(".content-card-text")[0].text.split("\n")[3]
    #description of first attraction
    
    BrazilExperience::Attractions.new(name, location, description)
  end
end
  end
  
  # def self.scrape_gastronomy
  #   doc_gastronomy = Nokogiri::HTML(open("https://www.atlasobscura.com/unique-food-drink/brazil"))

  #   name = doc_gastronomy.css(".content-card-text")[0].text.split("\n")[4]
  #   #name of food 
    
  #   description = doc_gastronomy.css(".content-card-text")[0].text.split("\n")[6]
  #   #short description of food
  # end

end
  
#binding.pry