module Board
  def generate_empty_board()
    puts ''
    empty_line = "         |         |         "
    divider = "_________|_________|_________"
    # 14 lines is the height of the board
    # Lines 4 and 9 are the horizontal dividers
    14.times { |i| puts i == 4 || i == 9 ? divider : empty_line}
    puts ''
  end
end
