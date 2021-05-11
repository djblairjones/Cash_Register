require "./lib/change_functions.rb"
puts "How much was the Total Price?"
price = gets.chomp.to_f
puts "How much did the customer pay?"
payment = gets.chomp.to_f
change = ChangeMaker.new
tot_change = change.totalchange(price, payment)
if (tot_change.class == String)
    puts tot_change
else
    denomination = ChangeMaker.new
    tot_change = change.changedenom(tot_change)
    puts tot_change
end

