class Checking
  attr_reader :values

  WINNING_LINES = [
    ["1","4", "7"], ["2", "5", "8"], ["3", "6", "9"], # Vertical lines
    ["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"], # Horizontal lines
    ["1", "5", "9"], ["3", "5", "7"] # Diagonals.
    ]
  
  def initialize(values)
    @values=values
  end

  def checking(player)
    WINNING_LINES.each do |win|
      return true if win.all? {|winning| @values[winning]==player}
      false
    end
  end
  def empty?
    return true if @values.all? {|cell| cell[1]!=" "}
  end
end
