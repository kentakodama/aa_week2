require 'card'
require 'rspec'

describe Card do
  describe '#initialize' do
    subject(:card) {Card.new(:spades, :ten)}

    it 'sets suits and values' do
      expect(card.suit).to eq(:spades)
      expect(card.value).to eq(:ten)
    end

    it 'raises error when invalid suit' do

    end
end

describe '#<=>' do
  it 'should return 0 if the cards are of equal value' do
    expect(Card.new(:diamond, :ten) <=> Card.new(:hearts, :ten)).to eq(0)
  end

  it 'should return 1 if the card has a higher value' do
    expect(Card.new(:diamond, :ten) <=> Card.new(:hearts, :nine)).to eq(9)
  end

  
end
