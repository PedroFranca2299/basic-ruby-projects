def get_stock_prices_input
  puts "Enter the number of days, minimum price, and maximum price (separated by commas):"
  input = gets.chomp
  num_days, min_price, max_price = input.split(",").map(&:to_i)
  [num_days, min_price, max_price]
end

def generate_stock_prices(num_days, min_price, max_price)
  prices = []
  num_days.times do
    price = rand(min_price..max_price)
    prices << price
  end
  prices
end

num_days, min_price, max_price = get_stock_prices_input
prices = generate_stock_prices(num_days, min_price, max_price)

p prices