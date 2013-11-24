def playback_input(user_input)
  puts "You said: #{user_input}"
  puts "Ok, fine!" if user_input == "Nothing!" 
  puts "I don\'t have time for that right now!" if user_input == "I have a lot to say" 
end

puts "What do you want to say?"
user_input = gets.chomp
playback_input(user_input)