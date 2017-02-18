# # Original make_change method
# def make_change(amount)
#   coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }  # using alternate hash syntax for brevity/clarity
#   coin_count = {}  # initialize the coin_count hash
#   coins.each do |type, value|  # loop through the coins hash (quarter > penny)
#     if amount >= value  # if the amount of change is greater than the value of the current coin
#       coin_count[type] = 0  # then add that type of coin to the coin_count hash (need this for while loop)
#     end
#     while amount >= value  # next, if the amount of change is greater than the value of the current coin
#       amount = amount - value  # subtract the current coin's value from the amount of change (i.e. 31 - 25)
#       coin_count[type] += 1  # then increment that coin's count in the coin_count hash
#     end  # repeat this loop until the amout of change is less than the value of the current coin
#   end  # then evaluate the next coin, continuing until all coins have been evaluated (and amount has been reduced to 0)
#   return coin_count  # return the coin_count hash, which will be a { coin_type: count } key-value pair
# end

# Refactored make_change method
def make_change(amount)
  coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }
  coin_count = {}
  coins.each do |type, value|
    coin_count[type] = 0 if amount >= value
    (amount -= value; coin_count[type] += 1) while amount >= value
  end
  return coin_count
end

# Sandbox testing
# p make_change(8)  # {:nickel=>1, :penny=>3}
# p make_change(11)  # {:dime=>1, :penny=>1}
# p make_change(19)  # {:dime=>1, :nickel=>1, :penny=>4}
# p make_change(27)  # {:quarter=>1, :penny=>2}
# p make_change(31)  # {:quarter=>1, :nickel=>1, :penny=>1}
# p make_change(48)  # {:quarter=>1, :dime=>2, :penny=>3}
# p make_change(93)  # {:quarter=>3, :dime=>1, :nickel=>1, :penny=>3}