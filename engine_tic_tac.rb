require_relative 'board'
require_relative 'check'
require_relative 'game'

class Engine
  def initialize
    @values={"1"=>" ",
            "2"=>" ",
            "3"=>" ",
            "4"=>" ",
            "5"=>" ",
            "6"=>" ",
            "7"=>" ",
            "8"=>" ",
            "9"=>" "	}
  end
  def two_player_start
    Box.new(@values).create_box
    while true
      Twoplayers.new(@values,"First").player
      Box.new(@values).create_box
      check=Checking.new(@values)
      if check.checking("x")==true
        puts "First player won"
        break
      end

      if check.empty?
        puts "This is draw. Congratulation!"
        break
      end

      Twoplayers.new(@values,"Second").player
      Box.new(@values).create_box
      if check.checking("o")==true
        puts "Second player won"
        break
      end

    end
  end
  def one_player_start
    puts "Upps, we do not have that game"
  end
end
