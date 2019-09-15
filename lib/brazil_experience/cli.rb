#our CLI controller, programming everything here

class BrazilExperience::CLI 
  
  def begin_experience
    puts "Welcome to".green.bold + " the Brazil".blue.bold + " Experience!".yellow.bold
      sleep 3
    puts "What would you like to explore?".green.bold
      sleep 2
    #main_menu
    #goodbye 
    ##attractions
    gastronomy
    end
      
  # def main_menu
    
  #     puts "Please choose from: 
  #         attractions, gastronomy or exit".green.bold
          
  #         answer = gets.strip.downcase

  #     case answer 
  #       when "attractions"
  #         attractions
  #       when "gastronomy"
  #         gastronomy
  #       when "exit"
  #         sleep 1 
  #       else
  #         puts "I did not understand your choice. Please try again.".green.bold
  #           sleep 2
  #       main_menu 
  #     end
  # end
  
  # def attractions
  #   puts "Here are your attractions. Which one would you like to learn more about?".blue.bold
  #     sleep 1
  #     Scraper.scrape_attractions
  #   #puts "Please choose by number:".blue.bold
  #   #   sleep 1
  #   BrazilExperience::Attractions.all.each_with_index do |attraction,index|
  #     puts "#{index + 1}. #{attraction.name}"
  #   end
  #   #     #list of attractions to choose from by number input
  #   #     @list_attractions = BrazilExperience::Attractions.list_attractions

  #  end
  
   def gastronomy
    puts "Here are your food choices. Which would you like to learn more about?".yellow.bold
      sleep 1
      Scraper.scrape_gastronomy
  #   puts "Please choose by number:".yellow.bold
  #     sleep 1
  BrazilExperience::Gastronomy.all.each_with_index do |food,index|
      puts "#{index + 1}. #{food.name}"
    binding.pry
  #     #list of food items to choose from by number input
  #     @list_gastronomy = BrazilExperience::Gastronomy.list_gastronomy
    end
  end
  
  # def goodbye
  #   puts "Thank you for visiting the Brazil Experience. We hope you enjoyed you stay.".blue.bold
  # end
  
end
