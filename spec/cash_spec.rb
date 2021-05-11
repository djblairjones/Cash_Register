require "change_functions.rb"

describe ChangeMaker do
# total change test for a $1 return
    describe ".totalchange" do
        context "given price 4 and payment 5" do
            it "returns 1" do
                   jers_change = ChangeMaker.new 
                expect(jers_change.totalchange(4, 5)).to eql(1)
            end
        end    
# total change test for decimal return        
        context "given price 1.50 and payment 2" do
            it "returns .50" do
                jers_change = ChangeMaker.new 
                expect(jers_change.totalchange(1.50, 2)).to eql(0.50)
            end
        end    
    # total change test for high value and decimal
        context "given price 159.99 and payment 500.00" do
            it "returns 340.01" do
               jers_change = ChangeMaker.new 
                expect(jers_change.totalchange(159.99, 500.00)).to eql(340.01)
            end
        end    
    # total change test for errors        
        context "given price 100 and payment 50" do
            it "returns error" do
               jers_change = ChangeMaker.new 
                expect(jers_change.totalchange(100, 50)).to eql("error")
            end
        end    
    end
   # total change denominations no change 
    describe ".changedenom" do
        context "given totalchange 1" do
            it "returns Hundreds: 0 Fifties: 0 Twenties: 0 Tens: 0 Fives: 0 Ones: 1 Quarters: 0 Dimes: 0 Nickels: 0 Pennies: 0" do
                   jers_change = ChangeMaker.new 
                expect(jers_change.changedenom(1)).to eql("Hundreds: 0 Fifties: 0 Twenties: 0 Tens: 0 Fives: 0 Ones: 1 Quarters: 0 Dimes: 0 Nickels: 0 Pennies: 0")
            end
        end 
    # total change denominations change included    
        context "given totalchange .99" do
            it "returns Hundreds: 0 Fifties: 0 Twenties: 0 Tens: 0 Fives: 0 Ones: 0 Quarters: 3 Dimes: 2 Nickels: 0 Pennies: 4 " do
                   jers_change = ChangeMaker.new 
                expect(jers_change.changedenom(0.99)).to eql("Hundreds: 0 Fifties: 0 Twenties: 0 Tens: 0 Fives: 0 Ones: 0 Quarters: 3 Dimes: 2 Nickels: 0 Pennies: 4")
            end
        end 
    # total change high value with denominations
        context "given totalchange 843.33" do
            it "returns Hundreds: 8 Fifties: 0 Twenties: 2 Tens: 0 Fives: 0 Ones: 3 Quarters: 1 Dimes: 0 Nickels: 1 Pennies: 3 " do
                   jers_change = ChangeMaker.new 
                expect(jers_change.changedenom(843.33)).to eql("Hundreds: 8 Fifties: 0 Twenties: 2 Tens: 0 Fives: 0 Ones: 3 Quarters: 1 Dimes: 0 Nickels: 1 Pennies: 3")
            end
        end
    end
end 