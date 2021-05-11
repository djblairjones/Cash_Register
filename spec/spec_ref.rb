require "morse.rb"

describe MorseConverter do
    
    describe ".convert" do
        context "given the letter a" do
            it "returns .-" do
                message = MorseConverter.new
                expect(message.convert("a")).to eql(".- ")
            end
        end
        context "given the letters ab" do
            it "returns .- -... " do
                message = MorseConverter.new
                expect(message.convert("ab")).to eql(".- -... ")
            end
        end
        context "given the sentence Ef xz" do
            it "returns . ..-.  -..- --.. " do
                message = MorseConverter.new
                expect(message.convert("Ef xz")).to eql(". ..-.  -..- --.. ")
            end
        end
        context "given the sentence Ef xz." do
            it "returns . ..-.  -..- --.. " do
                message = MorseConverter.new
                expect(message.convert("Ef xz.")).to eql(". ..-.  -..- --..   ")
            end
        end
        context "given the sentence Ef/xz" do
            it "returns error" do
                message = MorseConverter.new
                expect(message.convert("Ef/xz")).to eql("error")
            end
        end
    end

end
