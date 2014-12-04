require_relative 'spec_helper'
require_relative '../intro_to_ruby_hashes_lab.rb'

describe "working with hashes" do

  describe "instantiating" do
    describe "#new_hash" do
      it "creates an empty hash and returns it" do

<<<<<<< HEAD
        expect(new_hash).to eq({})
      end
    end
  end

  describe "instantiating a hash with ONE key-value pair" do
    describe "#actor" do
      it "creates a hash named actor whose key is a symbol :name and whose value is a string, 'Dwayne The Rock Johnson'" do
        expect(actor[:name]).to eq("Dwayne The Rock Johnson")
      end
=======
      getting_started = {}
      expect(getting_started).to be_a(Hash)
    end
  end

  context "instantiating a hash with a key-value pair" do
    it "creates a hash named instructor whose key is a symbol name and value is a string Katie" do
      # create your hash here
      # replace the underscore in expect with the name of your hash

      instructor = {:name => "Katie"}
      expect(instructor).to be_a(Hash)
      expect(instructor.keys[0].to_s).to eq("name")
      expect(instructor.values[0]).to eq("Katie")
>>>>>>> solution added
    end
  end

end

describe "building a multidimensional monopoly hash" do
<<<<<<< HEAD
  describe "adding a key-value pair to the top level of the monopoly hash" do
    describe "#monopoly" do
      it "adds a key-value pair to the monopoly hash. The key should be :railroads and the value should be an empty hash" do
        expect(monopoly[:railroads]).to eq({})
        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values).to match_array([{}])
      end
=======
  monopoly = {}

  context "adding a key-value pair to the top level of the hash " do
    it "creates a key (a symbol railsroads) whose value is an empty hash" do
      # add the key-value pair to your hash here
      # make sure your solution is programmatic; meaning that the below is incorrect even though the test will pass
      # monopoly = {:rails => {} }
      # if you need help, read the section on Common Uses¶ in http://ruby-doc.org/core-2.1.3/Hash.html

      monopoly[:railroads] = {}

      expect(monopoly.keys.count).to eq(1)
      expect(monopoly.values).to match_array([{}])
>>>>>>> solution added
    end
  end

  describe "adding key-value pairs to the second level of the monopoly hash that we started building in the #monopoly method" do
    describe "#monopoly_with_second_tier" do
      it "sets the first key of the :railroads hash to a symbol, :pieces, whose value is the integer 4" do
        # the goal of this part of the lab is to have you build the multidimentional monopoly hash in sequential order
        # hence the solution to this (and the rest of the tests in this lab) builds on top of each other.

<<<<<<< HEAD
        expect(monopoly_with_second_tier.values[0].values[0]).to eq(4)
        expect(monopoly_with_second_tier.values[0].keys[0]).to eq(:pieces)
      end

      it "sets the second key of the :railroads hash to a symbol, :names, whose value is an empty hash" do

        expect(monopoly_with_second_tier[:railroads][:names]).to eq({})
      end

      it "sets the third key of the :railroads hash to a symbol, :rent_in_dollars, whose value is an empty hash " do

        expect(monopoly_with_second_tier[:railroads][:rent_in_dollars]).to eq({})
        expect(monopoly_with_second_tier.values[0].keys).to eq([:pieces, :rent_in_dollars, :names])
      end
    end
  end

  describe "adding key-value pairs to the third level of the monopoly hash that we continued building in the #monopoly_with_second_tier method" do
    describe "#monopoly_with_third_tier" do
      it "sets the 1st key of the :rent_in_dollars hash to a symbol, :one_piece_owned, whose value is the integer 25" do
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
=======
      monopoly[:railroads] = {:pieces => 4}

      expect(monopoly.values[0].values[0]).to eq(4)
      expect(monopoly.values[0].keys[0]).to eq(:pieces)
    end

    it "sets the second key of railroads hash to a string rent_in_dollars whose value is an empty hash" do

      monopoly[:railroads]["rent_in_dollars"] = {}

      expect(monopoly.values[0].values).to eq([4, {}])
      expect(monopoly.values[0].keys).to eq([:pieces, "rent_in_dollars"])
    end

    it "sets the third key of railroads hash to a symbol names whose value is an empty hash " do

      monopoly[:railroads][:names] = {}

      expect(monopoly.values[0].values).to eq([4, {}, {}])
      expect(monopoly.values[0].keys).to eq([:pieces, "rent_in_dollars", :names])
    end
  end

  context "third level of monopoly hash" do
    context "adding key-value pairs to the third-level of the hash" do
      # the goal of this part of the lab is to have you build the multidimentional monopoly hash in sequential order
      # hence the solution to this (and the rest of the tests in this lab) builds on top of each other.
      # You might find it helpful to rewrite the solution to the test above here
      # before adding the solution to this test

      it "sets the 1st key of rent_in_dollars hash to a symbol one_piece_owned whose value is the integer 25" do

        monopoly[:railroads]["rent_in_dollars"][:one_piece_owned] = 25

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0]["rent_in_dollars"].values[0]).to eq(25)
        expect(monopoly.values[0]["rent_in_dollars"].keys[0]).to eq(:one_piece_owned)
>>>>>>> solution added
      end

      it "sets the 2nd key of the :rent_in_dollars hash to a symbol, :two_pieces_owned, whose value is the integer 50" do

<<<<<<< HEAD
        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].keys.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars][:two_pieces_owned]).to eq(50)
=======
        monopoly[:railroads]["rent_in_dollars"][:two_pieces_owned] = 50

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].keys.count).to eq(3)
        expect(monopoly.values[0]["rent_in_dollars"][:two_pieces_owned]).to eq(50)
>>>>>>> solution added
      end

      it "sets the 3rd key of the :rent_in_dollars hash to a symbol, :three_pieces_owned, whose value is the integer 100" do

<<<<<<< HEAD
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars][:three_pieces_owned]).to eq(100)
=======
        monopoly[:railroads]["rent_in_dollars"][:three_pieces_owned] = 100

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0]["rent_in_dollars"].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0]["rent_in_dollars"][:three_pieces_owned]).to eq(100)
>>>>>>> solution added
      end

      it "sets the 4th key of the :rent_in_dollars hash to a symbol, :four_pieces_owned, whose value is the integer 200" do

<<<<<<< HEAD
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly_with_third_tier.values[0][:rent_in_dollars][:four_pieces_owned]).to eq(200)
=======
        monopoly[:railroads]["rent_in_dollars"][:four_pieces_owned] = 200

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0]["rent_in_dollars"].keys.count).to eq(4)
        expect(monopoly.values[0]["rent_in_dollars"][:four_pieces_owned]).to eq(200)
>>>>>>> solution added
      end

<<<<<<< HEAD
      it "sets the 1st key of the :names hash to a symbol, :reading_railroad, whose value is an empty hash" do
=======
    context "adding a hash-value to the third level of the hash" do #nesting name will lead to fourth level nesting
      it "sets the 1st key of names hash to a symbol reading_railroad whose value is an empty hash" do

        monopoly[:railroads][:names][:reading_railroad] = {}
>>>>>>> solution added

        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[0]).to eq(:reading_railroad)
        expect(monopoly_with_third_tier.values[0][:names].values[0]).to eq({})
      end

      it "sets the 2nd key of the :names hash to a symbol, :pennsylvania_railroad, whose value is an empty hash" do

<<<<<<< HEAD
        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[1]).to eq(:pennsylvania_railroad)
        expect(monopoly_with_third_tier.values[0][:names].values[1]).to eq({})
=======
        monopoly[:railroads][:names][:pennsylvania_railroad] = {}

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:names].values[1]).to eq({})
>>>>>>> solution added
      end

      it "sets the 3rd key of the :names hash to a symbol, :b_and_o_railroad, whose value is an empty hash" do

<<<<<<< HEAD
        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[2]).to eq(:b_and_o_railroad)
        expect(monopoly_with_third_tier.values[0][:names].values[2]).to eq({})
=======
        monopoly[:railroads][:names][:b_and_o_railroad] = {}

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:names].values[2]).to eq({})
>>>>>>> solution added
      end

      it "sets the 4th key of the :names hash to a symbol, :shortline, whose value is an empty hash" do

<<<<<<< HEAD
        expect(monopoly_with_third_tier.keys.count).to eq(1)
        expect(monopoly_with_third_tier.values[0].values.count).to eq(3)
        expect(monopoly_with_third_tier.values[0][:names].keys[3]).to eq(:shortline)
        expect(monopoly_with_third_tier.values[0][:names].values[3]).to eq({})
=======
        monopoly[:railroads][:names][:shortline] = {}

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:names].values[3]).to eq({})
>>>>>>> solution added
      end
    end
  end

  describe "fourth level of monopoly hash" do
    describe "#monopoly_with_fourth_tier" do
      it "sets the 1st key of the :reading_railroad hash to a string, 'mortgage_value', whose value is '$100'" do

<<<<<<< HEAD
        expect(monopoly_with_fourth_tier.values[0][:names].has_key?(:reading_railroad)).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[0].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[0].values[0]).to eq("$100")
      end
=======
          monopoly[:railroads][:names][:reading_railroad]["mortgage_value"] = "$100"

          expect(monopoly.values[0][:names].has_key?(:reading_railroad)).to be true
          expect(monopoly.values[0][:names].values[0].has_key?("mortgage_value")).to be true
          expect(monopoly.values[0][:names].values[0].values[0]).to eq("$100")
        end
>>>>>>> solution added

      it "sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is '$200'" do

<<<<<<< HEAD
        expect(monopoly_with_fourth_tier.values[0][:names].has_key?(:pennsylvania_railroad)).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[1].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[1].values[0]).to eq("$200")
      end
=======
          monopoly[:railroads][:names][:pennsylvania_railroad]["mortgage_value"] = "$200"

          expect(monopoly.values[0][:names].has_key?(:pennsylvania_railroad)).to be true
          expect(monopoly.values[0][:names].values[1].has_key?("mortgage_value")).to be true
          expect(monopoly.values[0][:names].values[1].values[0]).to eq("$200")
        end
>>>>>>> solution added

      it "sets the 1st key of the :b_and_o_railroad hash to a string, 'mortgage_value', whose value is '$400'" do

<<<<<<< HEAD
        expect(monopoly_with_fourth_tier.values[0][:names].has_key?(:b_and_o_railroad)).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[2].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[2].values[0]).to eq("$400")
      end
=======
          monopoly[:railroads][:names][:b_and_o_railroad]["mortgage_value"] = "$400"

          expect(monopoly.values[0][:names].has_key?(:b_and_o_railroad)).to be true
          expect(monopoly.values[0][:names].values[2].has_key?("mortgage_value")).to be true
          expect(monopoly.values[0][:names].values[2].values[0]).to eq("$400")
        end
>>>>>>> solution added

      it "sets the 1st key of the :shortline hash to a string, `mortgage_value`, whose value is '$800'" do

<<<<<<< HEAD
        expect(monopoly_with_fourth_tier.values[0][:names].keys[3]).to eq(:shortline)
        expect(monopoly_with_fourth_tier.values[0][:names].values[3].has_key?("mortgage_value")).to be true
        expect(monopoly_with_fourth_tier.values[0][:names].values[3].values[0]).to eq("$800")
=======
          monopoly[:railroads][:names][:shortline]["mortgage_value"] = "$800"

          expect(monopoly.values[0][:names].keys[3]).to eq(:shortline)
          expect(monopoly.values[0][:names].values[3].has_key?("mortgage_value")).to be true
          expect(monopoly.values[0][:names].values[3].values[0]).to eq("$800")
        end
>>>>>>> solution added
      end
    end
  end
end
