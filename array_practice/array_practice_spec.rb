require "array_practice"

describe "Dealing a deck of cards" do
  it "deals 1 hand of 5 cards, by default" do
    deck = Deck.new
    deal_cards(deck).should == [deck.cards[0..4]]
  end

  it "deals 2 hands of 5 cards" do
    deck = Deck.new
    deal_cards(deck, 2).should == [deck.cards[0..4], deck.cards[5..9]]
  end

  it "deals 3 hands of 7 cards" do
    deck = Deck.new
    deal_cards(deck, 3, 7).should == [deck.cards[0...7], deck.cards[7...14], deck.cards[14...21]]
  end

end

describe "#remove_dups" do
  it "removes duplicates" do
    arr = [1,3,6,4,3,6,7,5,2,5,6,3,3,2,4]
    res = remove_dups(arr)
    res.sort.should == [1, 2, 3, 4, 5, 6, 7]
  end
end

describe "#get_first_and_last_items" do
  it "returns an array of the first and last items" do
    arr = [5,7,9,2,4,6,8,3,1]
    get_first_and_last_items(arr).should == [5, 1]
  end
end

describe "#get_middle_item" do
  it "returns the middle item in odd-sized list" do
    arr = [5,7,9,2,4,6,8,3,1]
    get_middle(arr).should == 4
  end

  it "returns the middle 2 items in even-sized list" do
    arr = [5,7,9,2,4,6,8,3,1,7]
    get_middle(arr).should == [4, 6]
  end

end

describe "#count_off_by_twos" do
  it "counts off by 2's, with an even number of items" do
    names = %w(Joe Jack Bob Mary Francis Henrietta Sara Nathan)
    count_off_by_twos(names).should == [%w(Joe Bob Francis Sara), %w(Jack Mary Henrietta Nathan)]
  end

  it "counts off by 2's, with an odd number of items, and the first list is larger" do
    names = %w(Joe Jack Bob Mary Lisa Francis Henrietta Sara Nathan)
    count_off_by_twos(names).should == [%w(Joe Bob Lisa Henrietta Nathan), %w(Jack Mary Francis Sara)]
  end
end




  # ctof(37).should be_within(0.1).of(98.6)
