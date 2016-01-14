require 'deck'

describe '#initialize' do
  let(:deck) {Deck.new}

  it "has 52 cards" do
    expect(deck.cards.length).to eq(52)
  end

  it "contains card objects" do
    expect(deck.cards[51].class).to eq(Card)
  end
end

describe '#deal_a_card' do
  let(:deck) {Deck.new}
  before(:each) { deck.deal_a_card }

  it "deals out a single card" do
    expect(deck.cards_left?).to eq(51)
  end

end
