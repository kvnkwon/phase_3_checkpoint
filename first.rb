def playback_input(user_input)
  puts "You said: #{user_input}"  
end

puts "What do you want to say?"
user_input = gets.chomp
playback_input(user_input)