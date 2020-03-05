require_relative 'spec_helper'
require_relative '../intro_to_ruby_hashes_lab.rb'

describe "We can create complex, nested Hashes by implementing four methods:" do
  describe "the base_hash method" do
    describe "returns a hash with" do
      it "one key" do
        expect(base_hash.keys.count).to(eq(1), "Make sure you have at least one key defined in the monopoly hash")
      end
    end

    describe "the returned hash contains" do
      it "one key called :railroads that points to an empty hash" do
        expect(base_hash.has_key?(:railroads)).to(be_truthy, "Make sure to include a key called :railroads that points to an empty hash")
        expect(base_hash[:railroads]).to eq({}), "The :railroads key should point to a hash"
      end
    end
  end

  describe "the monopoly_with_second_tier method" do
    describe "builds on the hash returned by base_hash, updating the nested :railroads hash so that it includes" do
      it "a key called :pieces set to 4" do
        expect(monopoly_with_second_tier[:railroads].has_key?(:pieces)).to(be_truthy, "Make sure the nested :railroads hash has a key called :pieces")
        expect(monopoly_with_second_tier[:railroads][:pieces]).to(eq(4), "Make sure the nested hash :railroads has a key called :pieces with a value of 4")
      end

      it "a key called :rent_in_dollars set to an empty hash" do
        expect(monopoly_with_second_tier[:railroads].has_key?(:rent_in_dollars)).to(be_truthy, ":railroads should point to a Hash with key rent_in_dollars")
        expect(monopoly_with_second_tier[:railroads][:rent_in_dollars]).to eq({}), ":rent_in_dollars should point to an empty hash"
      end

      it "a key called :names set to an empty hash" do
        expect(monopoly_with_second_tier[:railroads].has_key?(:names)).to(be_truthy, ":railroads should point to a Hash with key names")
      end
    end
  end

  describe "the monopoly_with_third_tier method" do
    describe "builds on the hash returned by monopoly_with_second_tier" do
      describe "updating the nested :rent_in_dollars hash so that it includes" do
        it "a :one_piece_owned key set to 25" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:one_piece_owned)).to(be_truthy, "key :one_piece_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:one_piece_owned]).to(eq(25), ":one_piece_owned should point to the value 25")
        end
        
        it "a :two_pieces_owned key set to 50" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:two_pieces_owned)).to(be_truthy, "key :two_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:two_pieces_owned]).to(eq(50), ":two_pieces_owned should point to the value 50")
        end
  
        it "a :three_pieces_owned key set to 100" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:three_pieces_owned)).to(be_truthy, "key :three_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:three_pieces_owned]).to(eq(100), ":three_pieces_owned should point to the value 100")
        end
  
        it "a :four_pieces_owned key set to 200" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:four_pieces_owned)).to(be_truthy, "key :four_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:four_pieces_owned]).to(eq(200), ":four_pieces_owned should point to the value 200")
        end
      end
      
      describe "updating the nested :names hash so that it includes" do
        it "a :reading_railroad key that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:reading_railroad)).to(be_truthy, "key :reading_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:reading_railroad]).to(eq({}), ":reading_railroad should point to an empty Hash")
        end

        it "a :pennsylvania_railroad key that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:pennsylvania_railroad)).to(be_truthy, "key :pennsylvania_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:pennsylvania_railroad]).to(eq({}), ":pennsylvania_railroad should point to an empty Hash")
        end

        it "a :b_and_o_railroad key that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:b_and_o_railroad)).to(be_truthy, "key :b_and_o_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:b_and_o_railroad]).to(eq({}), ":b_and_o_railroad should point to an empty Hash")
        end

        it "a :shortline_railroad key that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:shortline_railroad)).to(be_truthy, "key :shortline_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:shortline_railroad]).to(eq({}), ":shortline_railroad should point to an empty Hash")
        end
      end
    end

  end


  describe "the monopoly_with_fourth_tier method" do
    describe "builds on the hash returned by monopoly_with_third_tier, updating each of the nested hashes inside the :names hash so that" do
      describe "the hash assigned to :reading_railroad includes" do
        it "a :mortgage_value key set to 100" do
          expect(monopoly_with_fourth_tier[:railroads][:names][:reading_railroad][:mortgage_value]).to eq(100)
        end
      end
      describe "the hash assigned to :pennsylvania_railroad includes" do
        it "a :mortgage_value key set to 200" do
          expect(monopoly_with_fourth_tier[:railroads][:names][:pennsylvania_railroad][:mortgage_value]).to eq(200)
        end
      end
      describe "the hash assigned to :b_and_o_railroad includes" do
        it "a :mortgage_value key set to 400" do
          expect(monopoly_with_fourth_tier[:railroads][:names][:b_and_o_railroad][:mortgage_value]).to eq(400)
        end
      end
      describe "the hash assigned to :shortline_railroad includes" do
        it "a :mortgage_value key set to 800" do
          expect(monopoly_with_fourth_tier[:railroads][:names][:shortline_railroad][:mortgage_value]).to eq(800)
        end
      end
    end
  end
    
end
