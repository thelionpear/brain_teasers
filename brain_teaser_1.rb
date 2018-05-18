
require_relative "brainteaser1_arrayclass"


@user_numbers = Brainteaser1_arrayclass.new
    


# function that takes the numbers the user inputs and shovels them on 

def take_user_input 
    puts "What numbers would you like to add?"
    puts "List as many numbers as you like separated by commas"
    user_input = gets.to_i 
    @user_numbers << user_input 
end 

take_user_input 