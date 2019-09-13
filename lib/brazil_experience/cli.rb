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
      puts "Please choose from: 
        attractions or gastronomy".green.bold
        
          input = gets.strip
          case input  
        when input == attractions
          attractions
        when input == gastronomy
          gatronomy
        when input != attractions && gastronomy
          puts  "I did not understand your choice. Please try again."
        end
  end
  
  def attractions
      puts "Which attraction would you like to learn more about?".yellow.bold
        sleep 2 
      puts "Please select a number:".yellow.bold
        sleep 1
    end
  
  def gastronomy
    puts "Which item would you like to learn more about?".green.bold
      sleep 3
    puts "Please choose by number:".green.bold
  end
  
  def goodbye
    puts "Thank you for visiting the Brazil Experience. We hope you enjoyed you stay.".blue.bold
  end
  
end

