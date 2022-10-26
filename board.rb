# frozen_string_literal: false

# Used to display the different states of the board
class Board
  attr_reader :states

  def initialize
    @states = Array.new(3) { Array.new(3, 0) }
  end

  def generate_empty_board
    puts ''
    empty_line = '         |         |         '
    divider = '_________|_________|_________'
    # 14 lines is the height of the board
    # Lines 4 and 9 are the horizontal dividers
    14.times { |i| puts [4, 9].include?(i) ? divider : empty_line }
    puts ''
  end
end
