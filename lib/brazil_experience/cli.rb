#our CLI controller, programming everything here

class BrazilExperience::CLI 
  
  def begin_experience
    puts "Welcome to the Brazil Experience!".yellow.bold
      sleep 3
    puts "What would you like to explore?".green.bold
      sleep 2
      main_menu
    end
      
  def main_menu
      puts "Please choose from: 
        attractions or gastronomy".green.bold
        
          input = gets.strip
        if input == attractions
          attractions
        elsif input == gastronomy
          gastronomy
        else
          puts  "I did not understand your choice. Please try again."
        end
      main_menu
  end
  
  def attractions
      puts "Which attraction would you like to learn more about?".green.bold
        sleep 2 
      puts "Please select a number:"
        sleep 1
    end
  
  def gastronomy
    puts "Which item would you like to learn more about?"
      sleep 3
    puts "Please choose by number:".green.bold
  end
  
  
end

