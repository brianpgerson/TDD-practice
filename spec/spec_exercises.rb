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
