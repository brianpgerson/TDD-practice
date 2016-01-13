require 'byebug'
require 'rspec'
require "spec_helper"
require './lib/exercise.rb'

describe "#my_uniq" do
  let(:array) { [1, 2, 2, 3, 4, 5, 5] }

  it 'returns an array with unique elements' do
    expect(array.my_uniq).to eq([1,2,3,4,5])
  end

end

describe "#two_sum" do
  let(:array) {[-1, 0, 2, -2, 1]}

  it 'return pairs of positions for elements equal to zero' do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

  it 'returns results sorted' do
    expect(array.two_sum.sort).to eq(array.two_sum)
  end
end

describe '#my_transpose' do
  let(:array) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }

  it 'converts the array orientation from rows to columns' do
    expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end

end

describe '#stock_picker' do
  let(:array) { [1, 2, 3, 4, 5, 6, 7] }

  it 'picks the two days that return the greatest difference' do
    expect(array.stock_picker).to eq([0, 6])
  end
end

describe 'TowersOfHanoi' do
subject(:towers) { TowersOfHanoi.new }

  it 'initializes a board with the correct starting positions' do
    expect(towers.board).to eq([[3,2,1],[],[]])
  end

  it 'render the board' do
    expect(towers).to receive(:render)
    towers.render
  end

  describe '#move'do
    before(:each) do
      towers.move(0, 1)
    end

    it 'makes a move from a tower to a tower' do
      expect(towers.board).to eq([[3,2], [1], []])
    end

    it 'raises an error if from_tower is nil' do
      expect{ towers.move(4, 0) }.to raise_error
    end
  end

  describe '#valid_move?' do
    before(:each) do
      towers.move(0, 1)
    end

    it 'returns false for invalid move' do
      expect(towers.valid_move?(0,1)).to eq(false)
    end

    it 'returns true for valid move' do
      expect(towers.valid_move?(0,2)).to eq(true)
    end
  end

  describe '#won?' do
    let(:game) do
      game = TowersOfHanoi.new
      game.board = [[], [3,2,1], []]
      game
    end

      it 'returns true if the board is won' do
          expect(game.won?).to eq(true)
      end

      it 'returns false if the board is not won' do
          expect(towers.won?).to eq(false)
      end
  end
end
