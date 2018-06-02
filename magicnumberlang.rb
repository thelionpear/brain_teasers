#this one is complete 

require "humanize" 

def magicnumber
    puts "give me a number"
    number = gets.to_i 
    word_number = number.humanize(locale: :id) 
    puts word_number 
    array = word_number.gsub(" ", "").split("")
    puts array
    #I know when I hit four that the loop will be done, but until then, the number could be
    #higher or lower than four, so greater-than doesn't work. 
    10.times do
        #when we enter the loop with t-w-e-n-t-y-f-i-v-e the array.count is ten 
        #so it should say "25 is ten"
        puts "#{number} is #{array.count}."
        #then it takes the array count and sets that to the variable number
        number = array.count 
        #then I use the gem to turn the number into it's written equivalent 
        word_number = number.humanize(locale: :id)
        puts word_number 
        #this word becomes the new array without spaces and split up so I can count it again up top
        array = word_number.gsub(" ", "").split("")
    end 
    puts "#{number} is #{array.count}."
    puts "4 is the magic number."
end 


magicnumber 