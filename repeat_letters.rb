#not complete 


#takes in the user input
#splits the words into arrays? then letters into an array
#set an index of one 
#goes through the array until reaches the length of it
#ups the index and takes that new letter through the whole array to compare
#has a variable that adds up the occurrences for comparison 
def repeat_letters 
    puts "Give me a sentence and I will find the word that has the most repeated letters."
    user_sentence = gets.strip 
    sentence_array = user_sentence.split(/\W+/)
    puts sentence_array 
    word_location = 0
    word_for_comparison = sentence_array[word_location]
    puts word_for_comparison 
    word_for_comparison_array = word_for_comparison.split('')
    puts word_for_comparison_array 
    puts word_for_comparison_array.length 
    letter_location = 0 
    repeat_tally = 0 
    while letter_location < word_for_comparison_array.length
        word_for_comparison_array.each do |letter| 
            if word_for_comparison_array[letter_location] == letter
                puts "#{letter} is equal to #{word_for_comparison_array[letter_location]}"
                repeat_tally += 1 
            else 
                puts "#{letter} is not equal to #{word_for_comparison_array[letter_location]}"
            end 
        end 
        letter_location += 1 
    end 
    puts repeat_tally 
    puts letter_location 

end 
#needs to pop the letter off the array for comparison 

# repeat_letters, TA Dan's solution 

# require 'pry'
# require 'colorize'

# def menu
#   print `clear`
#   puts "---Letters---".yellow
#   @entry = gets.strip
#   letter_check
# end

# def letter_check
#   most_repeats = ''
#   most = 0
#   words = @entry.split(/\W/)
#   words.each do |word|
#     letters = word.length
#     letters_uniq = word.split("").uniq.length
#     repeats = letters - letters_uniq
#     if repeats > most
#       most = repeats
#       most_repeats = word
#     elsif
#       repeats == most
#       most_repeats = most_repeats + ", " + word
#     end
#   end
#   if most == 0
#     puts "No words with repeated letters"
#   else
#     puts most_repeats + " has/have the most repeated letters."
#   end
# end

# menu
