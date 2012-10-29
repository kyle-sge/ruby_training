require 'calculator'

describe "add" do
  it "adds 0 and 0" do
    add(0, 0).should == 0
  end

  it "should add 2 + 2" do 
    add(2, 2).should == 4
  end

  it "adds positive numbers" do
    add(17, 68).should == 85
  end
end

describe "#power" do
  it "raises one number to the power of another number" do
    power(2, 5).should == 32
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    sum([]).should == 0
  end

  it "computes the sum of an array of one number" do
    sum([7]).should == 7
  end

  it "should add any arbitrary number of numbers in an array" do
    sum([1, 3, 5, 7, 9]).should == 25
  end
end

describe "#multiply" do
  it "multiplies two numbers" do
    multiply(3, 5).should == 15
  end

  it "multiplies several numbers" do
    multiply(2, 3, 4, 5) === 120
  end
end


