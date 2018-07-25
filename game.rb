require_relative 'engine_tic_tac'
class Twoplayers
  attr_reader :values, :player

  def initialize(values, player)
    @values=values
    @player=player
    if player=="First"
      @sign="x"
    elsif player=="Second"
      @sign="o"
    end
  end
  def player
	print "#{@player} player step, choose number of cell: "
    while true
      s_player=gets.chop
      if values[s_player]!="x" && values[s_player]!="o" && values.key?(s_player)
        values[s_player]=@sign
        break
      else
        print "This number is not empty or is not in list, try again "
      end
    end
  end
end
