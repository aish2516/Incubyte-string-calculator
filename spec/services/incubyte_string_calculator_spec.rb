require "rails_helper"
require "incubyte_string_calculator"

RSpec.describe IncubyteStringCalculator do

  describe ".add" do

	    it "returns 0 for an empty string" do
	       expect(IncubyteStringCalculator.add("")).to eq(0)
	    end

	    it "returns the number itself if only one number is given" do
           expect(IncubyteStringCalculator.add("1")).to eq(1)
        end

        it "returns the sum of two numbers" do
          expect(IncubyteStringCalculator.add("1,5")).to eq(6)
        end

	    it "handles an unknown number of numbers" do
	      expect(IncubyteStringCalculator.add("1,2,3,4,5")).to eq(15)
	    end

	    it "allows new lines as delimiters" do
	      expect(IncubyteStringCalculator.add("1\n2,3")).to eq(6)
	    end

	    it "supports different delimiters" do
	      expect(IncubyteStringCalculator.add("//;\n1;2")).to eq(3)
	    end

	    it "raises an error for negative numbers" do
	      expect { IncubyteStringCalculator.add("-1,2,-3") }.to raise_error(ArgumentError, "Negative numbers not allowed: -1, -3")
	    end
	end
end