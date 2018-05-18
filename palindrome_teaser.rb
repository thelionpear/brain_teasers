
def palindrome_tester 
@user_word_array = []
@palindrome_array = []
#function that takes user input 
puts "What word would you like to test?" 
print "> "
@user_word = gets.strip 
#function that splits the user input into pieces
puts "Your word is #{@user_word}"
@user_word_array << @user_word.split("")
puts @user_word_array 
#passes the pieces into an array

#takes the new array and slices them one at a time into another array

for letter in @user_word_array.count
    @palindrome_array << letter 
end 
# @palindrome_array << @user_word_array.slice(@user_word_array.count, 0)
puts @palindrome_array 
#compares the two arrays  
comparison 
end  

def comparison 
    if @user_word_array == @palindrome_array
        puts "This is a palindrome."
        puts "#{@user_word_array} in reverse does not equal #{@palindrome_array}"
    else 
        puts "This is not a palindrome." 
        puts "#{@user_word_array} in reverse does equal #{@palindrome_array}"
    end 
end 

palindrome_tester 