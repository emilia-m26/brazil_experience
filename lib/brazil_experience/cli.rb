#our CLI controller, programming everything here

class BrazilExperience::CLI 
  
  def begin_experience
    puts "Welcome to".green.bold + " the Brazil".blue.bold + " Experience!".yellow.bold
      sleep 3
    puts "What would you like to explore?".green.bold
      sleep 2
      main_menu
      goodbye 
    end
      
  def main_menu
      input = nil 
      puts "Please choose from: 
          attraction, gastronomy or exit".green.bold
      # while input != "exit"
          input = gets.strip.downcase
          case input  
            # when input == "attraction"
            #   attractions
            #   # puts "Here are your attractions. Which one would you like to learn more about?".blue.bold
            # when input == "gastronomy"
            #   gastronomy
            #   puts "Here are your food choices. Which would you like to learn more about?".yellow.bold
            when "attraction"
              puts "Here are your attractions. Which one would you like to learn more about?".blue.bold
            when "gastronomy"
              puts "Here are your food choices. Which would you like to learn more about?".yellow.bold
            when input != "exit"
              puts  "I did not understand your choice. Please try again.".green.bold
              main_menu
        # end
     end
  end
  
  def attractions
    puts "Here are your attractions. Which one would you like to learn more about?".blue.bold
      sleep 1
      puts "Please select a number:".blue.bold
        sleep 1
        #list of attractions to choose from by number input
    end
  
  def gastronomy
      sleep 1
      puts "Please choose by number:".yellow.bold
      #list of food items to choose from by number input
  end
  
  def goodbye
    puts "Thank you for visiting the Brazil Experience. We hope you enjoyed you stay.".blue.bold
  end
  
end
