class Card
	attr_accessor :rank, :suit
	
	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "#{self.rank} of #{self.suit}"
	end

	def display_card
		puts "#{self.rank} of #{self.suit}"
	end

	def self.random_card
		Card.new(rand(10), :spades)
	end

end

class Deck
	def initialize
		@cards = []
		(1..13).each do |rank|
			if rank <= 10
				@cards << Card.new(rank, :hearts)
				@cards << Card.new(rank, :diamonds)
				@cards << Card.new(rank, :clubs)
				@cards << Card.new(rank, :spades)
			elsif rank == 11
				@cards << Card.new("Jack", :hearts)
				@cards << Card.new("Jack", :diamonds)
				@cards << Card.new("Jack", :clubs)
				@cards << Card.new("Jack", :spades)
			elsif rank == 12
				@cards << Card.new("King", :hearts)
				@cards << Card.new("King", :diamonds)
				@cards << Card.new("King", :clubs)
				@cards << Card.new("King", :spades)
			elsif rank == 13
				@cards << Card.new("Queen", :hearts)
				@cards << Card.new("Queen", :diamonds)
				@cards << Card.new("Queen", :clubs)
				@cards << Card.new("Queen", :spades)
			end
		end
	end

	def shuffle
		@cards.shuffle!
	end

	def deal
		@cards.shuffle
		@cards.shift
	end

	def output
		@cards.each do |card|
			card.output_card
		end
	end
end

deck = Deck.new
deck.shuffle
card = deck.deal
card.display_card