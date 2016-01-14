require 'card'

describe "Card" do
  let(:card) { Card.new(:hearts, "4") }

  describe '#initialize' do
    it 'initializes with a suit and a value' do
        expect(card.suit).to eq(:hearts)
        expect(card.val_string).to eq("4")
        expect(card.value).to eq(4)
    end
  end
  
end
