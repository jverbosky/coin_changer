# # Original make_change method
# def make_change(amount)
#   coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }
#   coin_count = {}
#   coins.each do |type, value|
#     if amount >= value
#       coin_count[type] = 0
#     end
#     while amount >= value
#       amount = amount - value
#       coin_count[type] += 1
#     end
#   end
#   return coin_count
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
# p make_change(8)
# p make_change(11)
# p make_change(19)
# p make_change(27)
# p make_change(31)
# p make_change(48)
# p make_change(93)