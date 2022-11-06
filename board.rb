# frozen_string_literal: false

# Used to display the different states of the board
class Board
  attr_reader :states

  O_SIGN = [
    ['  ___  '],
    [' / _ \ '],
    ['| (_) |'],
    [' \___/ ']
  ].freeze

  X_SIGN = [
    ['__  __'],
    ['\ \/ /'],
    [' >  < '],
    ['/_/\_\\']
  ].freeze

  EMPTY = [
    ['      '],
    ['      '],
    ['      '],
    ['      ']
  ].freeze

  SIGN_HASH = {
    'O' => O_SIGN,
    'X' => X_SIGN,
    0 => EMPTY
  }.freeze

  def initialize
    @states = Array.new(3) { Array.new(3, 0) }
    @divider = '|________|_________|________|'
  end

  def generate_empty_board
    puts ''
    # 14 lines is the height of the board
    # Lines 4 and 9 are the horizontal dividers
    14.times { |i| puts [4, 9].include?(i) ? @divider : @empty_line }
    puts ''
  end

  def generate_row(sub_array)
    lines = Array.new(4) { Array.new(1, '| ') }
    sub_array.each do |sign|
      4.times do |num|
        lines[num].push(SIGN_HASH[sign][num])
        lines[num].push(' | ')
      end
    end
    lines.each { |line| puts line.flatten.join('') }
  end

  def generate_board
    3.times do |row|
      puts @divider if [1, 2].include?(row)
      generate_row(states[row])
    end
  end
end
