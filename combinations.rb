require "pry" 

def combination 
    #take the user input 
    puts "Pick a word"
    word = gets.strip 
    #break the word up 
    word_array = word.split("")
    #take letter and combine with the next letter 
    combo_array = []
    x = 0
    y = 1
    while y < word_array.length 
    combo_array << word_array[x]
    combo_array << word_array[x] + word_array[y]
    x += 1 
    y += 1 
    end 
    x = 0
    y = 1 
    while x < word_array.length - 1 
    combo_array << word_array[y] + word_array[x]
    x += 1 
    y += 1 
    end 
    puts combo_array 
end 

combination 

