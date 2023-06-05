def generate_random_stock_prices    #Randomly generates the arguments to be passed onto the array             
  num_days = rand(5..10)  
  min_price = rand(1..50)   
  max_price = rand(51..100) 

  [num_days, min_price, max_price]
end


def generate_stock_prices(num_days, min_price, max_price)         #Pushes values to the array, using the arguments generated before
  prices = []
  num_days.times do
    price = rand(min_price..max_price)
    prices << price
  end
  prices
end

num_days, min_price, max_price = generate_random_stock_prices
prices = generate_stock_prices(num_days, min_price, max_price)

buy_index = 0
sell_index = 0
max_profit = -1
best_buy_index = 0
best_sell_index = 1

p "These are the prices #{prices} in a #{num_days} days span"

prices.each_with_index do |buy_price, buy_index|                  #Stock picker algorithm
  (buy_index + 1).upto(prices.length - 1) do |sell_index|
    sell_price = prices[sell_index]

    if sell_price > buy_price && sell_index > buy_index
      if (sell_price - buy_price > max_profit)
        max_profit = sell_price - buy_price
        best_buy_index = buy_index
        best_sell_index = sell_index
      end
    end
  end  
end

if max_profit == -1
  p "There is no profitable option for this span of days"
else 
  p "The best day to buy is day #{best_buy_index + 1}, and best day to sell is day #{best_sell_index + 1}, with a profit of #{max_profit}"
end




