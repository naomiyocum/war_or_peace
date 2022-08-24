require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require 'pry'

RSpec.describe Player do

  describe '#initialize' do
    it 'exists' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      deck = Deck.new([card1, card2, card3])
      player = Player.new('Clarisa', deck)
      expect(player).to be_an_instance_of(Player)
    end

    it 'has an attribute' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      deck = Deck.new([card1, card2, card3])
      player = Player.new('Clarisa', deck)
      expect(player.name).to eq('Clarisa')
      expect(player.deck).to eq(deck)
    end
  end

  describe '#has_lost?' do
    it 'checks if lost' do
      card1 = Card.new(:diamond, 'Queen', 12)
      card2 = Card.new(:spade, '3', 3)
      card3 = Card.new(:heart, 'Ace', 14)
      deck = Deck.new([card1, card2, card3])
      player = Player.new('Clarisa', deck)
      binding.pry
      expect(player.has_lost?).to eq(false)
    end
  end

end