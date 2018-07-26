class Twoplayers
  attr_reader :values, :player, :simbol

  def initialize(values, player,simbol)
    @values=values
    @player=player
    @sign=simbol
  end

  def player_move
    s_player=gets.chop.to_i
    if values[s_player-1]!="x" && values[s_player-1]!="o" && values[s_player-1]!=nil
      values[s_player-1]=@sign
      return true
    end
    false
  end
end
