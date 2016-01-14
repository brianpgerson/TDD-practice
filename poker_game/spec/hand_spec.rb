require "hand"

describe "accepts cards" do
  let(:card) { double("card", :suit => :hearts, :value => 3, :val_string => "3") }
  let(:deck) do
    deck = []
    5.times { deck << card }
    deck
  end
  let(:hand) { Hand.new(deck)}
  before(:each) { hand.cards_in_hand << hand.deck.pop}

  it "receives a card" do
    expect(hand.cards_in_hand.length).to eq(1)
  end

end

describe '#dups' do
  let(:card) { double("card", :suit => :hearts, :value => 3, :val_string => "3") }
  let(:hand) { Hand.new() }
  before(:each) do
    hand.cards_in_hand << card
    hand.cards_in_hand << card
  end

  it "two of the same card value are a pair" do
    expect(hand.dups).to eq({ "3" => [3, 3] })
  end
end

describe 'straight' do
  let(:card1) { double("card", :suit => :hearts, :value => 2, :val_string => "2") }
  let(:card2) { double("card", :suit => :hearts, :value => 3, :val_string => "3") }
  let(:card3) { double("card", :suit => :hearts, :value => 4, :val_string => "4") }
  let(:card4) { double("card", :suit => :hearts, :value => 5, :val_string => "5") }
  let(:card5) { double("card", :suit => :hearts, :value => 6, :val_string => "6") }
  let(:hand) { Hand.new() }
  before(:each) do
    hand.cards_in_hand = [card1, card2, card3, card4, card5]
  end

  it 'detects a straight of five cards' do
    expect(hand.straight[4] - hand.straight[0]).to eq(4)
  end

end
