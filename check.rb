class Check
  attr_reader :values

  WINNING_LINES = [
    [0,3, 6], [1, 4, 7], [2, 5, 8], # Vertical lines
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # Horizontal lines
    [0, 4, 8], [2, 4, 6] # Diagonals.
    ]

  def initialize(values)
    @values=values
  end

#check wether someone won or not
  def checking(player)
    WINNING_LINES.each do |win|
      return true if win.all? {|winning| @values[winning]==player}
      false
    end
  end

#check whether every cell is empty or not
	def empty?
    return true if @values.all? {|cell| cell!=" "}
  end
end
