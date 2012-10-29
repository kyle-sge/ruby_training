require 'string_patch'

describe String do

  describe "#titleize" do
    it "has a #titleize method" do
      "".should respond_to(:titleize)
    end
    
    it "returns a titleized version of the string" do
      "foo".titleize.should == "Foo"
    end
  end

end
