require 'pry'

def playback_input(user_input)
  puts "You said: #{user_input}"
  puts "Ok, fine!" if user_input == "Nothing!" 
  lot_to_say if user_input == "I have a lot to say" 
end

def lot_to_say
  puts "Ok, let\'s hear it!"
  say_lot = []
  say = ''
  while say != 'done'
    say = gets.chomp
    say_lot << say if say != 'done'
    break if say == 'done'
  end
  lot_to_say_playback(say_lot)
end

def lot_to_say_playback(say_lot)
  puts "You said: #{say_lot[0]}"
  say_lot[1, say_lot.length-2].each do |x|
    puts "Then, you said: #{x}"
  end
  puts "Finally you said: #{say_lot.last}"
  puts "Phew! Glad you got all #{say_lot.length} of those things off your chest!"
end

puts "What do you want to say?"
user_input = gets.chomp
playback_input(user_input)