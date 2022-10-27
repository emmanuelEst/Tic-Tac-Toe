# frozen_string_literal: false

# Methods and variables used to display either an 'X' or an 'O'
# in the console
module Sign
  X = [
    ['__  __'],
    ['\ \/ /'],
    [' >  < '],
    ['/_/\_\\']
  ].freeze

  O = [
    ['  ___  '],
    [' / _ \ '],
    ['| (_) |'],
    [' \___/ ']
  ].freeze
  def self.log_sign(sign)
    puts sign
  end
end
