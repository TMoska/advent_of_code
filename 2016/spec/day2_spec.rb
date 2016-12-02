require_relative '../day2/run.rb'
RSpec.describe "Day 2" do
	it "solves p1t1" do
		expect(solve_d2_1("../../spec/test_inputs/d2/p1t1.txt")).to eq 1985
	end

  it "solves p2t1" do
    expect(solve_d2_2("../../spec/test_inputs/d2/p2t1.txt")).to eq '5DB3'
  end
end
