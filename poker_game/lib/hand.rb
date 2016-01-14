require_relative 'deck'

class Hand

  attr_accessor :cards_in_hand, :deck

  def initialize(deck = nil)
    @deck = deck
    @cards_in_hand = []
    @possible_hands = {
      high_card: [],
      pair: [],
      two_pair: [],
      trips: [],
      straight: [],
      flush: [],
      quads: []
    }
  end

  def dups
    dup_hash = Hash.new {|h, k| h[k] = []}

    @cards_in_hand.each do |el|
      dup_hash[el.val_string] << el.value
    end
    
    selected = dup_hash.select { |k,v| v.length > 1 }
  end



end
