describe "working with hashes" do

  context "instantiating" do
    it "creates an empty hash and assigns it to a variable called getting_started" do
      # create your hash here
      # replace the underscore in expect with your hash variable name
      expect(__).to be_a(Hash)
    end
  end

  context "instantiating a hash with a key-value pair" do
    it "creates a hash named instructor whose key is a symbol name and value is a string Katie" do
      # create your hash here
      # replace the underscore in expect with the name of your hash

      expect(__).to be_a(Hash)
      expect(__.keys[0].to_s).to eq("name")
      expect(__.values[0]).to eq("Katie")
    end
  end

  describe "monopoly" do
    let(:monopoly) { {} }

    context "nesting monopoly hash one level deep" do

      it "adds a new key-value pair, where key is a symbol called railsroads and value is an empty hash, to a hash named monopoly" do
        # add the key-value pair to your hash, which is a variable called monopoly) here
        # make sure your solution is programmatic
        # a programmatic solution means that the below is incorrect even though the test will pass
        # monopoly = {:rails => {} }
        # if you need help, read the section on Common Uses¶ in http://ruby-doc.org/core-2.1.3/Hash.html
        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values).to match_array([{}])
      end
    end

    context "nesting monopoly hash two level deep" do

      it "adds a new key (a symbol callled pieces) to the empty value hash created above and sets its value to the integer 4" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.values[0].values[0]).to eq(4)
        expect(monopoly.values[0].keys[0]).to eq[:pieces]
      end
    end

    context "nesting monopoly hash three level deep" do

      it "adds a new key (a symbol names) to the empty value hash above and sets its value to another empty hash" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.values[0].values.count).to eq(2)
        expect(monopoly.values[0].values).to eq([4, {}])
        expect(monopoly.values[0].keys).to eq([:pieces, :names])
      end

      it "adds another new key (a symbol callled rent_in_dollars) to the empty value hash created above and sets its value to another empty hash" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0].values).to eq([4, {}, {}])
        expect(monopoly.values[0].keys).to eq([:pieces, :names, :rent_in_dollars])
      end

      it "adds a new key (a symbol callled one_piece_owned) to the empty value hash whose key is the symbol rent_in_dollars and sets its value to the integer 25" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
      end

      it "adds a new key (a symbol callled two_pieces_owned) to the value hash whose key is the symbol rent_in_dollars and sets its value to the integer 50" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
      end

      it "adds a new key (a symbol callled three_pieces_owned) to the value hash whose key is the symbol rent_in_dollars and sets its value to the integer 100" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].values[2]).to eq(100)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[2]).to eq(:three_pieces_owned)
      end

      it "adds a new key (a symbol callled four_pieces_owned) to the value hash whose key is the symbol rent_in_dollars and sets its value to the integer 200" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].values[2]).to eq(100)
        expect(monopoly.values[0][:rent_in_dollars].values[3]).to eq(200)
        expect(monopoly.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[2]).to eq(:three_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[3]).to eq(:four_pieces_owned)
      end
    end

    context "nesting monopoly hash four level deep" do
      it "adds a new key (a symbol callled reading_railroad) to the empty value hash whose key is the symbol names and sets its value to a hash whose key is the symbol mortgage_value and value is a string $100" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].values[2]).to eq(100)
        expect(monopoly.values[0][:rent_in_dollars].values[3]).to eq(200)
        expect(monopoly.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[2]).to eq(:three_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[3]).to eq(:four_pieces_owned)
        expect(monopoly.values[0][:names].values.count).to eq(1)
        expect(monopoly.values[0][:names].values[0][:mortgage_value]).to eq("$100")
        expect(monopoly.values[0][:names].has_key?(:reading_railroad)).to be true
        expect(monopoly.values[0][:names].values[0].has_key?(:mortgage_value)).to be true
      end

      it "adds a new key (a symbol callled pennsylvania_railroad) to the hash whose key is the symbol names and sets its value to a hash whose key is the symbol mortgage_value and value is a string $100" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].values[2]).to eq(100)
        expect(monopoly.values[0][:rent_in_dollars].values[3]).to eq(200)
        expect(monopoly.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[2]).to eq(:three_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[3]).to eq(:four_pieces_owned)
        expect(monopoly.values[0][:names].values.count).to eq(2)
        expect(monopoly.values[0][:names].has_key?(:reading_railroad)).to be true
        expect(monopoly.values[0][:names].has_key?(:pennsylvania_railroad)).to be true
        expect(monopoly.values[0][:names].values[0].has_key?(:mortgage_value)).to be true
        expect(monopoly.values[0][:names].values[1].has_key?(:mortgage_value)).to be true
      end

      it "adds a new key (a symbol callled b_and_o_railroad) to the hash whose key is the symbol names and sets its value to a hash whose key is the symbol mortgage_value and value is a string $100" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].values[2]).to eq(100)
        expect(monopoly.values[0][:rent_in_dollars].values[3]).to eq(200)
        expect(monopoly.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[2]).to eq(:three_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[3]).to eq(:four_pieces_owned)
        expect(monopoly.values[0][:names].values.count).to eq(3)
        expect(monopoly.values[0][:names].has_key?(:reading_railroad)).to be true
        expect(monopoly.values[0][:names].has_key?(:pennsylvania_railroad)).to be true
        expect(monopoly.values[0][:names].has_key?(:b_and_o_railroad)).to be true
        expect(monopoly.values[0][:names].values[0].has_key?(:mortgage_value)).to be true
        expect(monopoly.values[0][:names].values[1].has_key?(:mortgage_value)).to be true
        expect(monopoly.values[0][:names].values[2].has_key?(:mortgage_value)).to be true

      end

      it "adds a new key (a symbol callled shortline ) to thehash whose key is the symbol names and sets its value to a hash whose key is the symbol mortgage_value and value is a string $100" do
        # the solution to this (and the rest of the tests in this lab) builds on top of each other
        # so to get this test to pass you will have to rewrite the solution to the test above here
        # and then also add the solution to this test here to get this to pass,
        # you will have to build out the monopoly hash in sqential order

        expect(monopoly.keys.count).to eq(1)
        expect(monopoly.values[0].values.count).to eq(3)
        expect(monopoly.values[0][:rent_in_dollars].values.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].values[0]).to eq(25)
        expect(monopoly.values[0][:rent_in_dollars].values[1]).to eq(50)
        expect(monopoly.values[0][:rent_in_dollars].values[2]).to eq(100)
        expect(monopoly.values[0][:rent_in_dollars].values[3]).to eq(200)
        expect(monopoly.values[0][:rent_in_dollars].keys.count).to eq(4)
        expect(monopoly.values[0][:rent_in_dollars].keys[0]).to eq(:one_piece_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[1]).to eq(:two_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[2]).to eq(:three_pieces_owned)
        expect(monopoly.values[0][:rent_in_dollars].keys[3]).to eq(:four_pieces_owned)
        expect(monopoly.values[0][:names].values.count).to eq(4)
        expect(monopoly.values[0][:names].has_key?(:reading_railroad)).to be true
        expect(monopoly.values[0][:names].has_key?(:pennsylvania_railroad)).to be true
        expect(monopoly.values[0][:names].has_key?(:b_and_o_railroad)).to be true
        expect(monopoly.values[0][:names].has_key?(:shortline)).to be true
        expect(monopoly.values[0][:names].values[0].has_key?(:mortgage_value)).to be true
        expect(monopoly.values[0][:names].values[1].has_key?(:mortgage_value)).to be true
        expect(monopoly.values[0][:names].values[2].has_key?(:mortgage_value)).to be true
        expect(monopoly.values[0][:names].values[3].has_key?(:mortgage_value)).to be true
      end
    end

  end
end
