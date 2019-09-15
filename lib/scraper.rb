require "open-uri"
require "nokogiri"
require "pry"

    doc = Nokogiri::HTML(open("https://www.atlasobscura.com/things-to-do/brazil/places"))

    #to change attraction - only change first index - second index dicates location of information in content
    location = doc.css(".content-card-text")[0].text.split("\n")[1]
    #city of first attraction
    
    name = doc.css(".content-card-text")[0].text.split("\n")[2]
  #name of first attraction
  
    description = doc.css(".content-card-text")[0].text.split("\n")[3]
    #description of first attraction
 
 
 doc_gastronomy = Nokogiri::HTML(open("https://www.atlasobscura.com/unique-food-drink/brazil"))

    name = doc_gastronomy.css(".content-card-text")[-1].text.split("\n")[4]
    #name of food 
    
    description = doc_gastronomy.css(".content-card-text")[-1].text.split("\n")[6]
    #short description of food
    
   detail_food = doc_gastronomy.css(".content-card food-card.href=/foods/ice-cream-bean")
  
  
binding.pry