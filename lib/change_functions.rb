class ChangeMaker
    def totalchange(price, payment)
        puts ChangeMaker.class
        puts payment.class
        change = (payment - price) 
        return "No Change Required!" if change == 0.0
        return "Customer payment is insufficient!" if change < 0
        return change
    end
    def changedenom(tot_change)
        dollars = tot_change.to_i.floor(2)
        cents = ((tot_change.to_i - dollars) * 100).round
        #hundreds
        hundreds_num = dollars/100
        dollars = dollars - (hundreds_num * 100) 
        #fifties
        fifties_num = dollars/50
        dollars = dollars - (fifties_num * 50)
        #twenties
        twenties_num = dollars/20
        dollars = dollars - (twenties_num * 20)
        #tens
        tens_num = dollars/10
        dollars = dollars - (tens_num * 10)
        #fives
        fives_num = dollars/5
        dollars = dollars - (fives_num * 5)
        #ones
        ones_num = dollars

        #change Quarters
        quarters_num = cents/25
        cents = cents - (quarters_num * 25)
        #dimes
        dimes_num = cents/10
        cents = cents - (dimes_num * 10)
        #nickels
        nickels_num = cents/5
        cents = cents - (nickels_num * 5)
        #pennies
        pennies_num = cents

        change_text = "The total Change Amount is: Hundreds: #{hundreds_num} Fifties: #{fifties_num} Twenties: #{twenties_num} Tens: #{tens_num} Fives: #{fifties_num} Ones: #{ones_num} Quarters: #{quarters_num} Dimes: #{dimes_num} Nickels: #{nickels_num} Pennies: #{pennies_num}"
        return change_text
    end



end 

