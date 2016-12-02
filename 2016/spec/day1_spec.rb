require_relative '../day1/run.rb'
RSpec.describe "Day 1" do
  it "solves test 1" do
    expect(solve_d1("../../spec/test_inputs/d1/1.txt")).to eq 5
  end
  it "solves test 2" do
    expect(solve_d1("../../spec/test_inputs/d1/2.txt")).to eq 2
  end
  it "solves test 3" do
    expect(solve_d1("../../spec/test_inputs/d1/3.txt")).to eq 12
  end
end
