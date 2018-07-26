require_relative 'board'
require_relative 'check'
require_relative 'game'

class Engine
  def initialize
    @values=Array.new(9, " ")
  end

  def player_move(pl_number, simbol)
    print "#{pl_number} player step, choose number of cell: "
    while true
      break if Twoplayers.new(@values,pl_number,simbol).player_move==true
      print "This number is not empty or is not in list, try again "
    end
    puts Box.new(@values).create_box
    check=Check.new(@values)
    if check.checking(simbol)==true
      puts "#{pl_number} player won"
      return true
    end

    if check.empty?
      puts "This is draw. Congratulation!"
      return true
    end
  end

  def running
    puts Box.new(@values).create_box
    while true
      break if player_move("First","x")==true ||
        player_move("Second","o")==true
    end
  end

  def one_player_start
    puts "Upps, we do not have that game"
  end
end
