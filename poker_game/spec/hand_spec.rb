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
