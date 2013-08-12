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

puts "Enter first year:"
year_1 = gets.chomp.to_i
puts "Enter second year:"
year_2 = gets.chomp.to_i

year_1_cpi = cpi_list[year_1]
year_2_cpi = cpi_list[year_2]

inflation_percent = (year_2_cpi - year_1_cpi) / year_1_cpi

# sprintf('%.2f' % number) or '%.2f' % number can be used in place of
# Float#Round, adding zeroes after the decimal point if necessary.
puts "Cumulative inflation is #{(inflation_percent * 100).round(2)}%."

then_now = 1 * (1 + inflation_percent)
now_then = 1 / (1 + inflation_percent)

puts "$1 in #{year_1} has the same buying power as $#{then_now.round(2)} in #{year_2}."
puts "$1 in #{year_2} has the same buying power as $#{now_then.round(2)} in #{year_1}."
