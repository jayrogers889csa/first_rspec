require 'rspec'
require_relative 'bike'

describe Bike do
  let(:bike) { Bike.new({wheels: 4, color: "red", gears: 16}) }

  context "#initialize" do
    it "creates a Bike object" do
      bike.should be_an_instance_of Bike
    end

    it "does not require specific parameters" do
      expect { Bike.new }.to be_true
    end
  end

  context "#color" do
    it "should return the color" do
      bike.color.should eq "red"
    end
  end

  context "#wheels" do
    it "should return the number of wheels" do
      bike.wheels.should eq 4
    end
  end

  context "#gears" do
    it "should return the number of gears" do
      bike.gears.should eq 16
    end
  end

  context "#moving?" do
    it "should tell whether the bike is moving" do
      bike.moving?.should eq false
    end
  end

  context "#ride!" do
    it "should set the boolean for moving to true" do
      bike.ride!.should eq true
    end
  end

  context "#stop!" do
    it "should set the boolean for moving to false" do
      bike.stop!.should eq false
    end
  end

  context "#some_fun_calculation" do
    it "should calculate the product of wheels and gears" do
      bike.some_fun_calculation.should eq 64
    end
  end

end

