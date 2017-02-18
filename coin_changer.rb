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
# p make_change(8)  # {:nickel=>1, :penny=>3}
# p make_change(11)  # {:dime=>1, :penny=>1}
# p make_change(19)  # {:dime=>1, :nickel=>1, :penny=>4}
# p make_change(27)  # {:quarter=>1, :penny=>2}
# p make_change(31)  # {:quarter=>1, :nickel=>1, :penny=>1}
# p make_change(48)  # {:quarter=>1, :dime=>2, :penny=>3}
# p make_change(93)  # {:quarter=>3, :dime=>1, :nickel=>1, :penny=>3}