require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/start'

war_deck = [
  card1 = Card.new(:heart, 'Ace', 14),
  card2 = Card.new(:heart, 'King', 13),
  card3 = Card.new(:heart, 'Queen', 12),
  card4 = Card.new(:heart, 'Jack', 11),
  card5 = Card.new(:heart, '10', 10),
  card6 = Card.new(:heart, '9', 9),
  card7 = Card.new(:heart, '8', 8),
  card8 = Card.new(:heart, '7', 7),
  card9 = Card.new(:heart, '6', 6),
  card10 = Card.new(:heart, '5', 5),
  card11 = Card.new(:heart, '4', 4),
  card12 = Card.new(:heart, '3', 3),
  card13 = Card.new(:heart, '2', 2),
  card14 = Card.new(:diamond, 'Ace', 14),
  card15 = Card.new(:diamond, 'King', 13),
  card16 = Card.new(:diamond, 'Queen', 12),
  card17 = Card.new(:diamond, 'Jack', 11),
  card18 = Card.new(:diamond, '10', 10),
  card19 = Card.new(:diamond, '9', 9),
  card20 = Card.new(:diamond, '8', 8),
  card21 = Card.new(:diamond, '7', 7),
  card22 = Card.new(:diamond, '6', 6),
  card23 = Card.new(:diamond, '5', 5),
  card24 = Card.new(:diamond, '4', 4),
  card25 = Card.new(:diamond, '3', 3),
  card26 = Card.new(:diamond, '2', 2),
  card27 = Card.new(:club, 'Ace', 14),
  card28 = Card.new(:club, 'King', 13),
  card29 = Card.new(:club, 'Queen', 12),
  card30 = Card.new(:club, 'Jack', 11),
  card31 = Card.new(:club, '10', 10),
  card32 = Card.new(:club, '9', 9),
  card33 = Card.new(:club, '8', 8),
  card34 = Card.new(:club, '7', 7),
  card35 = Card.new(:club, '6', 6),
  card36 = Card.new(:club, '5', 5),
  card37 = Card.new(:club, '4', 4),
  card38 = Card.new(:club, '3', 3),
  card39 = Card.new(:club, '2', 2),
  card40 = Card.new(:spade, 'Ace', 14),
  card41 = Card.new(:spade, 'King', 13),
  card42 = Card.new(:spade, 'Queen', 12),
  card43 = Card.new(:spade, 'Jack', 11),
  card44 = Card.new(:spade, '10', 10),
  card45 = Card.new(:spade, '9', 9),
  card46 = Card.new(:spade, '8', 8),
  card47 = Card.new(:spade, '7', 7),
  card48 = Card.new(:spade, '6', 6),
  card49 = Card.new(:spade, '5', 5),
  card50 = Card.new(:spade, '4', 4),
  card51 = Card.new(:spade, '3', 3),
  card52 = Card.new(:spade, '2', 2)
]

war_deck.shuffle!

deck1 = Deck.new(war_deck.take(26))
deck2 = Deck.new(war_deck.last(26))

player1 = Player.new('Megan', deck1)
player2 = Player.new('Aurora', deck2)
turn = Turn.new(player1, player2)

war = Game.new(player1, player2, turn)

war.start
