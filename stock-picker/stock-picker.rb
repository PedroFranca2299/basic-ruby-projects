def generate_random_stock_prices
  num_days = rand(5..10)    # Generate a random number between 5 and 10 for the number of days
  min_price = rand(1..50)   # Generate a random number between 1 and 50 for the minimum price
  max_price = rand(51..100) # Generate a random number between 51 and 100 for the maximum price

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

num_days, min_price, max_price = generate_random_stock_prices
prices = generate_stock_prices(num_days, min_price, max_price)

p "These are the prices #{prices} in a #{num_days} days span"