require 'temperature'

describe "temperature exercise" do
  describe "#celsius_to_fahrenheit" do
    it "should convert freezing" do
      celsius_to_fahrenheit(0).should == 32
    end

    it "should convert boiling" do
      celsius_to_fahrenheit(100).should == 212
    end

    it "should convert body temp" do
      celsius_to_fahrenheit(37).should be_within(0.01).of(98.6)
    end

    it "should convert any arbitrary temp" do
      celsius_to_fahrenheit(37).should be_within(0.01).of(98.6)
    end
  end

  describe "#fahrenheit_to_celsius" do
    it "should convert freezing" do
      fahrenheit_to_celsius(0).should be_within(0.1).of(-17.7)
    end

    it "should convert boiling" do
      fahrenheit_to_celsius(212).should == 100
    end

    it "should convert body temp" do
      celsius_to_fahrenheit(37).should be_within(0.01).of(98.6)
    end

  end










end
