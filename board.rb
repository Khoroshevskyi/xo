class Box
  attr_reader :values #values has to be in Hash
  def initialize(values)
    @values=values
    @whitespace=" "*6
    @frame ="+-----------+"
  end
  def create_box
    complete_frame="#{@frame}#{@whitespace}#{@frame}\n"+
		  "| #{@values["1"]} | #{@values["2"]} | #{@values["3"]} |#{@whitespace}| 1 | 2 | 3 |\n"+
		  "#{@frame}#{@whitespace}#{@frame}\n"+
		  "| #{@values["4"]} | #{@values["5"]} | #{@values["6"]} |#{@whitespace}| 4 | 5 | 6 |\n"+
		  "#{@frame}#{@whitespace}#{@frame}\n"+
		  "| #{@values["7"]} | #{@values["8"]} | #{@values["9"]} |#{@whitespace}| 7 | 8 | 9 |\n"+
		  "#{@frame}#{@whitespace}#{@frame}"
    puts complete_frame
  end
end
