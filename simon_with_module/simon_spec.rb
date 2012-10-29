require 'simon'

describe "simon class with module" do
  
  it "should have Gesticulation module method #jump" do
    Simon.new.should respond_to(:jump)
  end

  it "should have Gesticulation module method #flail_your_arms" do
    Simon.new.flail_your_arms.should == "[flail_your_arms!]"
  end

  it "should have basic Simon method #echo" do
    Simon.new.echo("foo foo").should == "foo foo"
  end

end