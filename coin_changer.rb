coins = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }
coin_count = {}
amount = 8

# def make_change(amount)

coins.each do |type, value|
  if amount >= value
    coin_count[type] = 0
  end
  while amount >= value
    amount = amount - value
    coin_count[type] += 1
  end
end

# coin_count.each do |type, count|
#   if count == 0
#     coin_count.delete(type)
#   end
# end

# end

# coins.each do |type, amount|
#   coin_count[type] += 1
# end

p coin_count
# make_change(26)
# p coin_count

