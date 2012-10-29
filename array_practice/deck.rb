RANKS = [2, 3, 4, 5, 6, 7, 8, 9, :Jack, :Queen, :King, :Ace]
SUITS = [:Heart, :Diamond, :Spade, :Club]
RANK_VALS = {:Jack => 10, :Queen => 11, :King => 12, :Ace => 13}

class Card

  attr_accessor :rank, :suit

  def initialize(suit_idx, rank_idx)
    self.rank = RANKS[rank_idx]
    self.suit = SUITS[suit_idx]
  end

  def rank_val
    self.rank.is_a?(Numeric) ? self.rank : RANK_VALS[self.rank]
  end

  def to_s
    "#{self.rank} of #{suit}s"
  end
end

class Deck
  attr_accessor :cards
  
  def initialize
    self.cards = []
    (0..SUITS.size-1).each do |suit_idx|
      (0..RANKS.size-1).each do |rank_idx|
        self.cards << Card.new(suit_idx, rank_idx)
      end
    end
    self.cards.shuffle!
  end
  
  def to_s
    self.cards
    #Uncomment to first sort by suit, then by rank.
    #self.cards.sort_by { |obj| [ obj.suit.to_s, obj.rank_val.to_s  ] }
  end
end