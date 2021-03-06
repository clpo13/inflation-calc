#!/usr/bin/env ruby
# Simple calculator to determine the change in purchasing power
# between two given years based on a file containing Consumer
# Price Indices from 1913 onward.
#
# TODO: Download and parse a list of CPI values straight from
# the BLS website instead of hand-entering them into the YML file.
# TODO: Allow user to specify the dollar amount they wish to compare.

require 'yaml'
cpi_list = YAML.load_file('cpi.yml')
year1, year2 = 0

loop do
  puts 'Enter first year (1913-2016):'
  year1 = gets.chomp.to_i
  break unless (year1 < 1913) || (year1 > 2016)
  puts 'Invalid year!'
end

loop do
  puts 'Enter second year (1913-2016):'
  year2 = gets.chomp.to_i
  break unless (year2 < 1913) || (year2 > 2016)
  puts 'Invalid year!'
end

year1_cpi = cpi_list[year1]
year2_cpi = cpi_list[year2]

inflation_percent = (year2_cpi - year1_cpi) / year1_cpi

# `sprintf('%.2f', number)` or `'%.2f' % number` can be used in place of
# Float#Round, adding zeroes after the decimal point if necessary.
puts "Cumulative inflation is #{(inflation_percent * 100).round(2)}%."

then_now = 1 * (1 + inflation_percent)

puts "$1 in #{year1} has the same buying power as $#{then_now.round(2)} in #{year2}."
