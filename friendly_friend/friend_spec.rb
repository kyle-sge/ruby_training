require "friend"

describe Friend do
  it "says hello" do
    Friend.new.hello.should == "Hello!"
  end

  it "says hello to someone" do
    Friend.new.greet("Bob").should == "Hello, Bob!"
  end
end