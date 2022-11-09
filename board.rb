# frozen_string_literal: false

# Used to display the different states of the board
class Board
  attr_accessor :states

  O_SIGN = [
    ['  ___  '],
    [' / _ \ '],
    ['| (_) |'],
    [' \___/ ']
  ].freeze

  X_SIGN = [
    ["__  __\s"],
    ["\\ \\/ /\s"],
    [" >  < \s"],
    ["/_/\\_\\\s"]
  ].freeze

  EMPTY = [
    ["\s\s\s\s\s\s\s"],
    ["\s\s\s\s\s\s\s"],
    ["\s\s\s\s\s\s\s"],
    ["\s\s\s\s\s\s\s"]
  ].freeze

  SIGN_HASH = {
    'O' => O_SIGN,
    'X' => X_SIGN,
    0 => EMPTY
  }.freeze

  def initialize
    @states = Array.new(3) { Array.new(3, 0) }
    @divider = '|_________|_________|_________|'
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

  def check_board(sign); end

  def across_check?(sign)
    rows = []
    states.each do |row|
      rows.push(row.all? { |elem| elem == sign })
    end
    rows.any?
  end

  def diagonal_check?; end

  def edges_check?; end

  private :across_check?, :diagonal_check?, :edges_check?, :generate_row
end
