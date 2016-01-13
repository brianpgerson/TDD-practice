require 'rspec'
require "spec_helper"
require './lib/exercise.rb'

describe "#my_uniq" do
  let(:array) { [1, 2, 2, 3, 4, 5, 5] }

  it 'returns an array with unique elements' do
    expect(array.my_uniq).to eq([1,2,3,4,5])
  end
  
end
