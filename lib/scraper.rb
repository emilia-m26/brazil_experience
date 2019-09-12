require "open-uri"
require "nokogiri"
require "pry"


doc = Nokogiri::HTML(open("https://www.atlasobscura.com/things-to-do/brazil/places"))


#location = doc.css(".content-card-text")[0].text.split("\n")[1]
#attraction_name = doc.css(".content-card-text")[0].text.split("\n")[2]
attraction_description = doc.css(".content-card-text")[0].text.split("\n")[3]


binding.pry