describe Deck do
  describe '::all_cards' do
    subject(:all_cards) {Deck.all_cards}
    it 'should generate and hold 52 cards' do
      expect(all_cards.count).to eq(52)
    end

    it 'should have no duplicates' do
      expect(all_cards.uniq.count).to eq(52)
    end
  end
  let(:cards) do
    [ double("card", :suit => :spades, :value => :king),
      double("card", :suit => :spades, :value => :queen),
      double("card", :suit => :spades, :value => :jack) ]
  end

  describe '#initialize' do
    it 'defaults to 52 cards' do
      deck = Deck.new
      expect(deck.count).to eq(52)
    end

    it "takes in cards as arguments" do
      deck = Deck.new(cards)
      expect(deck.count).to eq(3)
    end
  end
end
