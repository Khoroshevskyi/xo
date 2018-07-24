'''
require "minitest/autorun"

class Rtest < Minitest::Test
  def test_chaking1 
    assert_equal ("w"), Twoplayers.new(values={"1"=>" ",
                                            "2"=>" ",
                                            "3"=>" ",
                                            "4"=>" ",
                                            "5"=>" ",
                                            "6"=>" ",
                                            "7"=>"x",
                                            "8"=>"x",
                                            "9"=>"x"	}).chaking("x")
  end 
 
  def test_chaking2
    assert_equal ("w"), Twoplayers.new(values={"1"=>"x",
                                              "2"=>"o",
                                              "3"=>"x",
                                              "4"=>"o",
                                              "5"=>"x",
                                              "6"=>"o",
                                              "7"=>"o",
                                              "8"=>"o",
                                              "9"=>"o"	}).chaking("o")
  end 
  def test_chaking3
  	 assert_equal (nil), Twoplayers.new(values={"1"=>"x",
                                                 "2"=>"o",
                                                 "3"=>"x",
                                                 "4"=>"o",
                                                 "5"=>"x",
                                                 "6"=>"o",
                                                 "7"=>"o",
                                                 "8"=>"x",
                                                 "9"=>"o"	}).chaking("o")
  end
end
'''

class Box
  attr_reader :values #values has to be in Hash
	def initialize(values)
		@values=values
		@whitespace=" "*6
		@ramka="+-----------+"
	end
	def create_box
		lala="#{@ramka}#{@whitespace}#{@ramka}\n"+
				"| #{@values["1"]} | #{@values["2"]} | #{@values["3"]} |#{@whitespace}| 1 | 2 | 3 |\n"+
				"#{@ramka}#{@whitespace}#{@ramka}\n"+ 
				"| #{@values["4"]} | #{@values["5"]} | #{@values["6"]} |#{@whitespace}| 4 | 5 | 6 |\n"+
				"#{@ramka}#{@whitespace}#{@ramka}\n"+
				"| #{@values["7"]} | #{@values["8"]} | #{@values["9"]} |#{@whitespace}| 7 | 8 | 9 |\n"+
				"#{@ramka}#{@whitespace}#{@ramka}" 
		puts lala
  end
end


class Twoplayers
	
	attr_reader :values
	
	def initialize(values)
		@values=values
	end
	
	def chaking(player)
		if @values["1"]==@values["2"] && @values["1"]==@values["3"]  && @values["1"]==player ||
		@values["4"]==@values["5"] && @values["4"]==@values["6"] && @values["4"]==player ||
		@values["7"]==@values["8"] && @values["7"]==@values["9"] && @values["7"]==player ||
		@values["1"]==@values["4"] && @values["1"]==@values["7"] && @values["1"]==player ||
		@values["2"]==@values["5"] && @values["2"]==@values["8"] && @values["2"]==player ||
		@values["3"]==@values["6"] && @values["3"]==@values["9"] && @values["3"]==player ||
		@values["1"]==@values["5"] && @values["1"]==@values["9"] && @values["1"]==player ||
		@values["3"]==@values["5"] && @values["3"]==@values["7"] && @values["3"]== player   
			'w'
    end
	end

	
	def mg_first_player 
		print "First player step, choose number of cell: "
		while true 
			s_player=gets.chop
			if values[s_player]!="x" && values[s_player]!="o" && values.key?(s_player)
				values[s_player]="x"
				break
			else 
				 print "This number is not empty or is not in list, try again "
			end  
		end 
	end

	def mg_second_player 
		print "Second player step, choose number of cell: "
		while true 
			s_player=gets.chop
			if values[s_player]!="x" && values[s_player]!="o" && values.key?(s_player)
				values[s_player]="o"
				break
			else 
				 print "This number is not empty or is not in list, try again "
			end  
		end 
	end
end


class Starting
	def start
		while true 
			print "Do you want to play 2 person game(1), or with computer(2):"
			@choose=gets.chop
			if @choose=="1" || @choose=="2"
				choose_game
				break
			end
			puts "You had choosen bad number of move"
		end 
	end 
	def choose_game
		if @choose=="1"
			values={"1"=>" ",
							"2"=>" ",
							"3"=>" ",
							"4"=>" ",
							"5"=>" ",
							"6"=>" ",
							"7"=>" ",
							"8"=>" ",
							"9"=>" "	}
		
		Box.new(values).create_box
		while true
			two=Twoplayers.new(values)
			two.mg_first_player
			Box.new(values).create_box
			if two.chaking("x")!=nil
				puts "First player won"
				break
			end 
			two.mg_second_player
			Box.new(values).create_box
			if two.chaking("o")!=nil
				puts "Second player won"
				break 
			end 
		end 

		elsif @choose=="2"
			puts "Upps, we do not have that game"
		end 	
	end
end

Starting.new.start
	#end 
