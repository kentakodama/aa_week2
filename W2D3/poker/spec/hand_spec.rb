require 'card'
require 'deck'
require 'rspec'

describe Hand do
  let(:cards) {[
                Card.new(:spades, :ten),
                Card.new(:hearts, :five),
                Card.new(:hearts, :ace),
                Card.new(:diamonds, :two),
                Card.new(:hearts, :two)
              ]}

  subject(:hand) {Hand.new(cards)}

  describe '#initialize' do
    it "takes in cards" do
      expect(hand.cards).to eq(cards)
    end

    it 'raises error if there are not five cards' do
      expect {Hand.new(cards[0..3])}.to raise_error 'must have five cards'
    end
  end

  describe '#trade_cards' do
    let(:take_cards) {hand.cards[0..1]}
    let(:new_cards) {[Card.new(:spades, :ten), Card.new(:diamonds, :three)]}

    it "trades in cards" do
      hand.trade_cards(take_cards, new_cards)
      expect(hand).to_not include(*take_cards)
    end

    

  end



end
