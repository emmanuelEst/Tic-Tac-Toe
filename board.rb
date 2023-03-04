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

  # across_check
  # takes in the sign either 'X' or 'O' and checks if any of the rows all have matching signs
  # the resulting boolean is fed into check_board
  def across_check?(sign)
    rows = []
    states.each do |row| # Loops over each 'row' in states
      rows.push(row.all? { |elem| elem == sign }) # pushes the result of all? on each row to rows
    end
    rows.any? # checks if any values in rows is true and returns that boolean
  end

  def diagonal_check?(sign)
    test_values1 = []
    test_values2 = []

    states.each_index do |index|
      test_values1.push(states[index][index]) # The index of the row always matches the index element for left to right
      test_values2.push(states[index][2 - index]) # 2 - index access the values for right to left diagonal
    end
    return true if test_values1.all? { |token| token == sign } || test_values2.all? { |token| token == sign }
  end

  def edges_check?; end

  private :across_check?, :diagonal_check?, :edges_check?, :generate_row
end
