starter = "Family guy."

sentence_array = starter.split("").map(&:downcase)
#count all letters in the array minus empty spaces
accurate_count = sentence_array - [" "]
# _ replaces missing characters
final_sentence = starter.gsub(/[a-zA-Z]/,"_").split("")

# loop using a while loop
while sentence_array.count("") < accurate_count.count
    puts "Guess what I am:"
    # .chomp removes the end of line character
    guess =gets.downcase.chomp

    if sentence_array.include?(guess)
        # find where user input is located
        letter_index = sentence_array.find_index(guess)
        # clear all values when an item is guessed correctly
        sentence_array[letter_index] =""
        final_sentence[letter_index] = guess
        puts "👍 The sentence is now: #{final_sentence.join}"
    else
        puts "Oh jeez🤦.Guess again 🔫"
    end
end 



# strt: 