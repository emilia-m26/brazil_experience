#our CLI controller, programming everything here

class BrazilExperience::CLI 
  
  def begin_experience
    BrazilExperience::Attractions.load
    BrazilExperience::Gastronomy.load
    
    puts "Welcome to".green.bold + " the Brazil".blue.bold + " Experience!".yellow.bold
    sleep 3
    main_menu
  end
      
  def main_menu
    puts "What would you like to explore?"
    sleep 2

    puts "Please choose from: 
          attractions, gastronomy or exit"
          
    answer = gets.strip.downcase
      case answer 
        when "attractions"
          attractions
        when "gastronomy"
          gastronomy
        when "exit"
          sleep 1 
          goodbye
        else
          puts "I did not understand your choice. Please try again."
            sleep 2
        main_menu 
      end
  end
  
  def attractions
    puts "These are the attractions available. Which one would you like to explore?".yellow.bold
    sleep 3
      
    BrazilExperience::Attractions.all.each_with_index do |attraction,index|
      puts "#{index + 1}. #{attraction.name}"
    end
    sleep 1
        
    puts "Please choose a number, main menu or exit:".yellow.bold
      answer = gets.chomp
      attraction = BrazilExperience::Attractions.all[answer.to_i-1]
              
      if answer.to_i > 0 && answer.to_i <=16
        puts "*~* #{attraction.name} is located in #{attraction.location} *~*".green.bold
        puts  attraction.description
        sleep 4
        attractions
      elsif answer == "main menu"
        main_menu 
      elsif answer == "exit"
        sleep 1
        goodbye 
      else
        puts "I did not understand your selection. Please try again."
        sleep 2
        attractions
      end             
  end
  
   def gastronomy
      puts "Here are your food choices. Which would you like to learn more about?".green.bold
      sleep 3

      BrazilExperience::Gastronomy.all.each_with_index do |food,index|
        puts "#{index + 1}. #{food.name}"
      end
      sleep 1
        
      puts "Please choose a number, main menu, or exit:".green.bold
      answer = gets.chomp
      food_item = BrazilExperience::Gastronomy.all[answer.to_i-1]
                
        if answer.to_i > 0 && answer.to_i <=16
          puts "*~* #{food_item.name} *~*".yellow.bold
          puts  food_item.description
          sleep 4
          gastronomy
        elsif answer == "main menu"
          main_menu 
        elsif answer == "exit"
          sleep 1
          goodbye
        else
          puts "I did not understand your selection. Please try again."
          sleep 2
          gastronomy
        end
  end
    
  
  def goodbye
    puts "*~Thank you for visiting the Brazil Experience. We hope you enjoyed your stay!~*".blue.bold
  end
  
end
