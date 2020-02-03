require "open-uri"
require "nokogiri"
require "pry"

class Scraper
  
def self.scrape_attractions
    attractions_page = "https://www.atlasobscura.com/things-to-do/brazil/places"
    doc = Nokogiri::HTML(open(attractions_page))
    
    doc.css(".Card__content-wrap").map do |attraction|
      {:name => attraction.css(".Card__heading").text.strip,
      :location => attraction.css(".Card__hat").text,
      :description => attraction.css(".Card__content").text.strip}
    #binding.pry
    
  #below is sraping originally functional
    # doc.css(".content-card-text").map do |attraction|
    #  {:name => attraction.css(".title-underline").text,
    #  :location => attraction.css(".detail-sm.place-card-location").text,
    #  :description => attraction.css(".subtitle-sm").text}
    end
  end
  
    def self.scrape_gastronomy
      gastronomy_page = "https://www.atlasobscura.com/unique-food-drink/brazil"
      doc = Nokogiri::HTML(open(gastronomy_page))

      doc.css(".Card__content-wrap").map do |food|
        {:name => food.css(".Card__heading").text.strip,
        :description => food.css(".Card__content").text.strip}

  #below is sraping originally functional
   # doc.css(".content-card-text").map do |food|
    #  {:name => food.css(".title-underline").text,
     # :description => food.css(".content-card-subtitle").text}
    end
  end
  
 end
  