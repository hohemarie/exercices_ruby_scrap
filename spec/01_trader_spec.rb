require_relative '../lib/01_trader'

describe "the capture function" do 
it "should return the corresponding stock exchange according to the currency exchange with two digits after the comma" do
expect(capture("Bitcoin")).to eq("3674.95")
expect(capture("XRP")).to eq("0.32")
end
 
