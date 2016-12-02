require_relative '../day1/run.rb'
RSpec.describe "Day 1" do
  it "solves p1t1" do
    expect(solve_d1_1("../../spec/test_inputs/d1/p1t1.txt")).to eq 5
  end
  it "solves p1t2" do
    expect(solve_d1_1("../../spec/test_inputs/d1/p1t2.txt")).to eq 2
  end
  it "solves p1t3" do
    expect(solve_d1_1("../../spec/test_inputs/d1/p1t3.txt")).to eq 12
  end
  it "solves p2t1" do
    expect(solve_d1_2("../../spec/test_inputs/d1/p2t1.txt")).to eq 4
  end
end
