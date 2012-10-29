require 'dogpack'

# Define a Dog class where each Dog has a name.
# Define a DogPack class that lets you set the members of the pack.
# Make the DogPack class enumerable, to iterate the pack members.

describe "packs are enumerable" do
  it "should allow each dog to be enumerated via #map" do
    dog1 = Dog.new "Spot"
    dog2 = Dog.new "Bowser"
    pack = DogPack.new [dog1, dog2]
    
    res = pack.map {|dog| dog.name << " the Dog" }
    
    res.should == ["Spot the Dog", "Bowser the Dog"]
  end  
end