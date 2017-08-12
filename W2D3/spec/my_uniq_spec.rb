require 'rspec'
require 'my_uniq'

describe 'my_uniq' do
  let(:array) { [1, 3, 4, 1, 3, 7] }
  let(:uniqued_array) { my_uniq(array.dup) }

  #return only uniq items
  it 'returns an array of unique items' do
    expect(uniqued_array.all? do |el|
      uniqued_array.count(el) == 1
    end).to eq(true)
  end

  it 'only contains elements from the original array' do
    uniqued_array.each do |el|
      expect(array).to include(el)
    end
  end

  it 'does not change the original array' do
    expect{my_uniq(array)}.to_not change{array}
  end
end

describe 'two_sum' do
  let(:array) {[3, -1, 1, 4]}
  let(:one_zero) {[2, 0, 3, 1]}
  let(:two_zeros) {[0, 3, 0, 2]}

  it 'returns the indices of the elements that sum to zero' do
    expect(two_sum(array)).to eq([[1, 2]])
  end

  it 'doesnt get tripped up by a single zero' do
    expect(two_sum(one_zero)).to eq([])
  end

  it 'is able to take in two zeros' do
    expect(two_sum(two_zeros)).to eq([[0, 2]])
  end
end

describe 'my_transpose' do
  let(:matrix) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
  it 'switches the rows and columns' do
    expect(my_transpose(matrix)).to eq([[1, 4, 7], [2, 5, 8], [3, 6, 9]])
  end

end

describe 'stock_picker' do
  let(:prices) {[4, 2, 7, 4, 9, -1, 18]}
  it 'gives the buy and sell dates of most profitable' do
    expect(stock_picker(prices)).to eq([5, 6])
  end
end
