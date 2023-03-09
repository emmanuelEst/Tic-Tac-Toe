# frozen_string_literal: false

require 'io/console'
require_relative 'board'

puts 'Hello. Welcome to Tic-Tac-Toe.'
puts 'Please enter the name of the first player.'
print '> '
player_one = gets.chomp
$stdout.clear_screen
puts 'Please enter the name of the second player'
print '> '
player_two = gets.chomp
$stdout.clear_screen

puts "#{player_one} is 'X' and #{player_two} is 'O'"
breakout = true # Used to break out of while loop
player_tracker = player_one
token = 'X'

while breakout
  puts "It is #{player_tracker}'s turn"
  puts 'Please type the number where the first token should be placed.'
  puts 'Refer to the key to see what space each number corresponds to.'
  puts "\nKey"
  puts "\e[4m1|2|3\n4|5|6\n7|8|9\e[0m" # used an escape sequence to underline characters

  if player_tracker == player_one
    token == 'X'
  elsif player_tracker == player_two
    token == 'O'
  end
  breakout = false

end
