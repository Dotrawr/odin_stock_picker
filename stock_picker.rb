def stock_picker(stocks)
  buy = 0
  sell = 0
  profit = 0
  stocks.each_with_index do |stock, day|
    stocks.drop(day+1).each_with_index do |future_stock, future_day|
      if (future_stock - stock) <= profit
        next
      end
      profit = future_stock - stock
      buy = day
      sell = future_day + day + 1 
    end
  end
  [buy, sell]
end

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(stocks).to_s
stocks = [1, 1, 1, 1, 4]
puts stock_picker(stocks).to_s
stocks = [10, 9, 8, 7, 6, 5]
puts stock_picker(stocks).to_s
stocks = [10, 4, 8, 1]
puts stock_picker(stocks).to_s