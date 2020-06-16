require 'pry'

class Deck

    attr_accessor :cards

    def initialize()
        @cards = []

        Card.all.each {|card| cards << card}
    end

    def choose_card
        # select random card
        card_to_delete = self.cards.sample

        # delete card from deck
        self.cards.delete(card_to_delete)

        return card_to_delete
    end
end

class Card

    attr_reader :rank, :suit

    @@all = []

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
        self.class.all << self
    end

    def self.all
        return @@all
    end

end


ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

# generate all possible rank and suit combinations and create new cards
ranks.each do |rank|
    suits.each do |suit|
        card = Card.new(suit, rank)
    end
end