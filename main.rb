# frozen_string_literal: false

require 'io/console'
require 'pry-byebug'
require_relative 'board'
require_relative 'player'

board = Board.new
puts 'Hello. Welcome to Tic-Tac-Toe.'
puts 'Please enter the name of the first player.'
print '> '
player_one = Player.new(gets.chomp, 'X')
$stdout.clear_screen
puts 'Please enter the name of the second player'
print '> '
player_two = Player.new(gets.chomp, 'O')
$stdout.clear_screen

puts "#{player_one.name} is 'X' and #{player_two.name} is 'O'"
breakout = true # Used to break out of while loop
player_tracker = player_one
token = player_one.team

def switch_turns(player_tracker, player_one, player_two)
  if player_tracker == player_one
    player_tracker = player_two
    token = player_two.team
  elsif player_tracker == player_two
    player_tracker = player_one
    token = player_one.team
  end
end

binding.pry
while breakout
  puts "It is #{player_tracker}'s turn"
  puts 'Please type the number where the first token should be placed.'
  puts 'Refer to the key to see what space each number corresponds to.'
  puts "\nKey"
  puts "\e[4m1|2|3\n4|5|6\n7|8|9\e[0m" # used an escape sequence to underline characters
  switch_turns(player_tracker, play)
  binding.pry
  breakout = false
end
