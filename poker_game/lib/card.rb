class Card

  attr_reader :suit, :val_string, :value, :VALUE_HASH

  def initialize(suit, val_string, value)
    @suit = suit
    @val_string = val_string
    @value = value
  end

end
