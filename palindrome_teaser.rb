require "pry"

def palindrome_tester 
    @palindrome_array = []
    #function that takes user input 
    puts "What word would you like to test?" 
    print "> "
    @user_word = gets.strip 
    #function that splits the user input into pieces
    puts "Your word is #{@user_word}"
    @user_word_array = @user_word.split(//)
    puts @user_word_array 
    @array_number = @user_word_array.count 
    #passes the pieces into an array
    palindrome_array_maker 
end 
#takes the new array and slices them one at a time into another array
def palindrome_array_maker 
    puts "#{@array_number}"
    if @array_number >= 1
    @palindrome_array << @user_word_array[@array_number - 1]
    @array_number -= 1
    palindrome_array_maker 
    else 
        puts "Your word in reverse is #{@palindrome_array}." 
        comparison  
    end 
end 
# @palindrome_array << @user_word_array.slice(@user_word_array.count, 0)

#compares the two arrays  
  

def comparison 
    if @user_word_array == @palindrome_array
        puts "This is a palindrome."
        puts "#{@user_word_array} in reverse does equal #{@palindrome_array}"
    else 
        puts "This is not a palindrome." 
        puts "#{@user_word_array} in reverse does not equal #{@palindrome_array}"
    end 
end 

palindrome_tester 