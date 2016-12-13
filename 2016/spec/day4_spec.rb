require_relative '../day4/run.rb'
RSpec.describe "Day 4" do
	it "identifies complex real room" do
		expect(is_real("aaaaa-bbb-z-y-x-123[abxyz]")).to eq true
	end
	it "identifies simple real room" do
		expect(is_real("a-b-c-d-e-f-g-h-987[abcde]")).to eq true
	end
	it "identifies a real room" do
		expect(is_real("not-a-real-room-404[oarel]")).to eq true
	end
	it "identifies a not real room" do
		expect(is_real("totally-real-room-200[decoy]")).to eq false
	end
	it "returns a correct answer" do
		expect(solve_d4_1("../../spec/test_inputs/d4/p1t1.txt")).to eq 1514
	end
end
