# Simple calculator to determine the change in price of
# something given two Consumer Price Indices (CPI).

puts "Enter first (older) CPI:"
cpi_1 = gets.chomp.to_f
puts "Enter second (newer) CPI:"
cpi_2 = gets.chomp.to_f

inflation_percent = (cpi_2 - cpi_1) / cpi_1

# Float#Round will accomplish the same rounding effect, though sprintf,
# as used here, will add zeroes after the decimal point if necessary.
puts "Inflation percent is #{'%.2f' % (inflation_percent * 100)}%."

then_now = 1 * (1 + inflation_percent)
now_then = 1 / (1 + inflation_percent)

puts "$1 then has the same buying power as $#{'%.2f' % then_now} now."
puts "$1 now has the same buying power as $#{'%.2f' % now_then} then."
