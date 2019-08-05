require_relative 'spec_helper'
require_relative '../intro_to_ruby_hashes_lab.rb'

describe "We can create complex, nested Hashes by implementing four methods:" do
  describe "the base_hash method returns a Hash that" do
    it "has one key" do
      expect(base_hash.keys.count).to(eq(1), "Make sure you have at least one key defined in the monopoly hash")
    end

    it "the one key is called :railroads" do
      expect(base_hash.has_key?(:railroads)).to(be_truthy, "Make sure you have a key called :railroads in the `monopoly` Hash and that :railroads points to a Hash")
    end

    it "the one key, :railroads, points to an empty Hash" do
      expect(base_hash[:railroads]).to eq({})
    end
  end

  describe "the monopoly_with_second_tier method builds on the Hash returned by base_hash, but updates the inner Hash pointed at by :railroads such that the Hash" do
    it "has a key called :pieces" do
      expect(monopoly_with_second_tier[:railroads].has_key?(:pieces)).to(be_truthy, "Make sure the nested hash :railroads has a key called :pieces")
    end

    it "has a key, :pieces, points to the Integer value 4" do
      expect(monopoly_with_second_tier[:railroads][:pieces]).to(eq(4), "Make sure the nested hash :railroads has a key called :pieces whose value is 4")
    end
  end

  describe "the monopoly_with_third_tier method builds on the Hash returned by monopoly_with_second_tier, but updates the Hash pointed at by :railroads such that the Hash" do
    it "has a key called :rent_in_dollars" do
      expect(monopoly_with_third_tier[:railroads].has_key?(:rent_in_dollars)).to(be_truthy, ":railroads should point to a Hash with key rent_in_dollars")
    end

    it ":rent_in_dollars points to a Hash with four keys" do
      expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].keys.count).to(eq(4), ":railroads :rent_in_dollars Hash should record 4 levels of ownership")
    end


      describe "the Hash pointed to by :rent_in_dollars" do
        it "has a key :one_piece_owned that points to a fee of 25" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:one_piece_owned)).to(be_truthy, "key :one_piece_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:one_piece_owned]).to(eq(25), ":one_piece_owned should point to the value 25")
        end

        it "has a key :two_pieces_owned that points to a fee of 50" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:two_pieces_owned)).to(be_truthy, "key :two_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:two_pieces_owned]).to(eq(50), ":two_pieces_owned should point to the value 50")
        end

        it "has a key :three_pieces_owned that points to a fee of 100" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:three_pieces_owned)).to(be_truthy, "key :three_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:three_pieces_owned]).to(eq(100), ":three_pieces_owned should point to the value 100")
        end

        it "has a key :four_pieces_owned that points to a fee of 200" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:four_pieces_owned)).to(be_truthy, "key :four_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:four_pieces_owned]).to(eq(200), ":four_pieces_owned should point to the value 200")
        end
    end

    it "has a key called :names" do
      expect(monopoly_with_third_tier[:railroads].has_key?(:names)).to(be_truthy, ":railroads should point to a Hash with key names")
    end

    it ":names points to a Hash with four keys" do
      expect(monopoly_with_third_tier[:railroads][:names].keys.count).to(eq(4), ":railroads :names Hash should record 4 railroads")
    end

      describe "the Hashed pointed to by :names" do
        it "has a key :reading_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:reading_railroad)).to(be_truthy, "key :reading_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:reading_railroad]).to(eq({}), ":reading_railroad should point to an empty Hash")
        end

        it "has a key :pennsylvania_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:pennsylvania_railroad)).to(be_truthy, "key :pennsylvania_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:pennsylvania_railroad]).to(eq({}), ":pennsylvania_railroad should point to an empty Hash")
        end

        it "has a key :b_and_o_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:b_and_o_railroad)).to(be_truthy, "key :b_and_o_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:b_and_o_railroad]).to(eq({}), ":b_and_o_railroad should point to an empty Hash")
        end

        it "has a key :shortline_railroad that points to an empty Hash" do
          expect(monopoly_with_third_tier[:railroads][:names].has_key?(:shortline_railroad)).to(be_truthy, "key :shortline_railroad should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:names][:shortline_railroad]).to(eq({}), ":shortline_railroad should point to an empty Hash")
        end
      end
  end

  describe "the monopoly_with_fourth_tier method builds on the hash returned by monopoly_with_third_tier, but updates the Hash so that each of the :railroads :names keys points to a Hash with a key \"mortgage_value\" that is a String with a $-sign and an Integer after it" do

    it "reports reading_railroad's mortgage value as $100" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:reading_railroad]["mortgage_value"]).to eq("$100")
    end

    it "sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is also a string, '$200'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:pennsylvania_railroad]["mortgage_value"]).to eq("$200")
    end

    it "sets the 1st key of the :b_and_o_railroad hash to a string, 'mortgage_value', whose value is also a string, '$400'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:b_and_o_railroad]["mortgage_value"]).to eq("$400")
    end

    it "sets the 1st key of the :shortline_railroad hash to a string, 'mortgage_value', whose value is also a string, '$800'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:shortline_railroad]["mortgage_value"]).to eq("$800")
    end
  end
end
