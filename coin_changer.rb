def make_change(amount)
  coins = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }
  coin_count = {}
  coins.each do |type, value|
    if amount >= value
      coin_count[type] = 0
    end
    while amount >= value
      amount = amount - value
      coin_count[type] += 1
    end
  end
  return coin_count
end

# Sandbox testing
p make_change(8)
p make_change(11)
p make_change(19)
p make_change(27)
p make_change(31)
p make_change(48)
p make_change(93)