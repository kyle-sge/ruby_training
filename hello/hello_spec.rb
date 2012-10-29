require "hello"

describe "the hello word function" do
  it "says hello" do
    hello_world.should == "Hello World!"
  end
end

describe "hello person" do
  it "says hello to someone" do
    hello_someone("Bob").should == "Hello, Bob!"
  end
end
