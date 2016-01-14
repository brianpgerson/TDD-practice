require_relative 'card'

class Deck

  VALUE_HASH = {
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "10" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14
  }

  attr_accessor :cards

  def initialize
    @cards = []
    populate
  end

  def populate
    suits = [:hearts, :diamonds, :clubs, :spades]
    suits.each do |suit|
        VALUE_HASH.each do |key, value|
        @cards << Card.new(suit, key, value)
      end
    end
  end

  def shuffle
    @cards.shuffle
  end

  def deal_a_card
    card = @cards.pop
    card
  end

  def cards_left?
    @cards.length
  end

end
