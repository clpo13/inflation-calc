# Inflation Calculator

A simple Ruby command-line tool to find the difference in purchasing power of the US Dollar, as
well as the cumulative percent of inflation, between two years.

The included [cpi.yml](cpi.yml) file contains annual Consumer Price Indices from 1913 to 2016.

## Usage

```bash
ruby inflation_calc.rb
```

or

```bash
chmod +x inflation_calc.rb
./inflation_calc.rb
```

## Requirements

* Ruby 1.9.3 or later

## TODO

* [ ] Pull data directly from [BLS](https://www.bls.gov/cpi/)

## License

This code is free to use, modify, and distribute according to the terms of the MIT License,
the text of which is available in [LICENSE](LICENSE). I take no responsibility for time travel
related purchasing decisions made as a result of using this program.
