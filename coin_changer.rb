coins = {
  quarters: 25,
  dimes: 10,
  nickels: 5,
  pennies: 1
}

coin_count = {
  quarters: 0,
  dimes: 0,
  nickels: 0,
  pennies: 0
}

amount = 93  # {:quarters=>3, :dimes=>1, :nickels=>1, :pennies=>3}

# def make_change(amount)

coins.each do |type, value|
  while amount >= value
    puts "Coin type (#{type}) and amount (#{value})."
    puts "Amount: #{amount}"
    amount = amount - value
    puts "After subtracting: #{amount}"
    coin_count[type] += 1
  end
end

# end

# coins.each do |type, amount|
#   coin_count[type] += 1
# end

p coin_count
# make_change(26)
# p coin_count

