require "calculator"

describe Calculator do

  let(:calc){ Calculator.new }

  describe "#add" do
    it "returns an integer" do
      expect(calc.add 1, 1).to be_an Integer
    end

    context "when adding zero to an integer" do
      it "returns the integer" do
        expect(calc.add 4, 0).to eq 4
      end
    end

    it "is not dependent on the operation order" do
      expect(calc.add 1, 2).to eq calc.add(2, 1)
    end

    it "accepts more than 2 arguments" do
      expect(calc.add 2, 4, 3).to eq 9
    end
  
  
  describe "#subtract" do
	it "returns an integer" do
		expect(calc.subtract 6, 5).to be_an Integer
	end
	end
	
	context "when subtracting zero to an integer" do
		it "returns the integer" do
			expect(calc.subtract 5, 0).to eq 5
		end
	end
	
	# it "is dependent on the operation order" do
    #  expect(calc.subtract 3, 2).to not eq calc.subtract(2, 3)
    # end
	
	context "when subtracting an integer from that same integer" do
		it "returns zero" do
			expect(calc.subtract 5, 5).to eq 0 
		end
	end
	
	it "accepts more than 2 arguments" do
		expect(calc.subtract 9, 4, 3).to eq 2
	end
  end
  
  
  describe "#multiply" do
    it "returns an integer" do
      expect(calc.multiply 2, 1).to be_an Integer
    end

    context "when multiplying zero to an integer" do
      it "returns zero" do
        expect(calc.multiply 4, 0).to eq 0
      end
    end
	
	context "when multiplying one to an integer" do
      it "returns the integer" do
        expect(calc.multiply 4, 1).to eq 4
      end
    end

    it "is not dependent on the operation order" do
      expect(calc.multiply 1, 2).to eq calc.multiply(2, 1)
    end

    it "accepts more than 2 arguments" do
      expect(calc.multiply 2, 4, 3).to eq 24
    end
	
	
	describe "#divide" do
    it "returns an integer" do
      expect(calc.divide 2, 1).to be_an Integer
    end
	end

    # context "when dividing an integer by zero" do
    #  it "returns zero" do
    #    expect(calc.divide 4, 0).to eq 0
    #  end
    # end
	
	context "when dividing an integer by one" do
      it "returns the integer" do
        expect(calc.divide 4, 1).to eq 4
      end
    end

    #it "is not dependent on the operation order" do
    #  expect(calc.multiply 1, 2).to eq calc.multiply(2, 1)
    #end

    it "accepts more than 2 arguments" do
      expect(calc.divide 12, 2, 3).to eq 2
    end
	
  
  end
  
end
