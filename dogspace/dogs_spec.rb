require 'dogs'

describe "dog module" do
  it "should be required in order to access the dog class" do
    dog = DogStuff::Dog.new
    dog.bark.should == "Woof!"
  end

  it "should have the constant" do
    DogStuff::MAX_DOGS_IN_HOUSE.should == 4
  end

  it "should not allow the constant to be available in global scope" do
    defined?(MAX_DOGS_IN_HOUSE).should == nil
  end
end