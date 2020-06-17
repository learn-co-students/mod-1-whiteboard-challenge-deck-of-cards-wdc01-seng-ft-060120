require 'pry'

class Deck

    attr_reader :cards

    @@all = []

    def initialize
        @cards = []
        for suit in ["Hearts", "Clubs", "Diamonds", "Spades"] do
        for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
            @cards << Card.new(suit, rank)
            end
        end
        #binding.pry
    end

    def choose_card
        #rand_card = rand(1...@cards.count)
        #@cards.delete_at(@cards.index(rand_card))
        @cards.delete_at(rand(@cards.length))
    end

    def self.all
        @@all
    end

end

class Card

    attr_reader :rank, :suit

    def initialize(suit, rank)
      @rank = rank
      @suit = suit
    end

    def self.all
        @@all
    end
    
end
#binding.pry
#Construct a class for a `Deck` of cards, which has an attribute `cards` consisting of an array of 52 `Card` objects.  
#* A `Card` consists of a `rank` ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") 
#paired with a `suit` ("Hearts", "Clubs", "Diamonds", "Spades")
#* Your `Deck` should have a method `#choose_card` which selects a random card from the deck and removes it.
