require 'titleizer'

describe "titleize" do
  it "capitalizes a word" do
    titleize("jaws").should == "Jaws"
  end

  it "capitalizes every word (aka title case)" do
    titleize("david copperfield").should == "David Copperfield"
  end

  it "doesn't capitalize 'little words' in a title" do
    titleize("war and peace").should == "War and Peace"
  end

  it "does capitalize 'little words' at the start of a title" do
    titleize("the bridge over the river kwai").should == "The Bridge over the River Kwai"
  end
end