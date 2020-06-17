class Card
  RANK = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  SUIT = ["Hearts", "Clubs", "Diamonds", "Spades"]
  attr_reader :suit, :rank
  @@all = []
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

end

class Deck
  RANK = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  SUIT = ["Hearts", "Clubs", "Diamonds", "Spades"]
  attr_reader :cards
  def initialize
    @cards = []
    SUIT.each do |suit|
      RANK.each do |rank|
        card = Card.new(suit, rank)
        @cards << card
      end
    end
  end

  def choose_card
    self.cards.slice!(rand(51), 1).first
  end
end

