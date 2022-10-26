# frozen_string_literal: false

# Player class used to contain information like:
#   name, team, and current plays
class Player
  attr_reader :name, :team
  attr_accessor :plays

  def initialize(name, team)
    @name = name
    @team = team
    @plays = {}
  end
end
