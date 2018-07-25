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
