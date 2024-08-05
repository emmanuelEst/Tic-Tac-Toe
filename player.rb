# frozen_string_literal: false

# Player class used to contain information like:
#   name, team, and current plays
class Player
  attr_accessor :name, :team, :plays

  def initialize(name, team)
    @name = name
    @team = team
    @plays = {}
  end
end
