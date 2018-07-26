class Box
  attr_reader :values #values has to be in Array
  def initialize(values)
    @values=values
    @whitespace=" "*6
    @frame ="+-----------+"
  end
  def create_box
    complete_frame="#{@frame}#{@whitespace}#{@frame}\n"+
		  "| #{@values[0]} | #{@values[1]} | #{@values[2]} |#{@whitespace}| 1 | 2 | 3 |\n"+
		  "#{@frame}#{@whitespace}#{@frame}\n"+
		  "| #{@values[3]} | #{@values[4]} | #{@values[5]} |#{@whitespace}| 4 | 5 | 6 |\n"+
		  "#{@frame}#{@whitespace}#{@frame}\n"+
		  "| #{@values[6]} | #{@values[7]} | #{@values[8]} |#{@whitespace}| 7 | 8 | 9 |\n"+
		  "#{@frame}#{@whitespace}#{@frame}"
    return complete_frame
  end
end
