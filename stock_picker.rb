def stock_picker (stock_price)
  days=0
  maximum = 0
  range = []
  while days < stock_price.length do
    buy = stock_price[days]
     (days...stock_price.length-1).each do |item|
        sell = stock_price[item+1]
       profit = sell - buy
       if profit > maximum
         maximum = profit
         range = days, item+1
       end
     end
    days+=1
  end
  return range
end

stocks = [17,3,6,9,15,8,6,1,10]
values = stock_picker(stocks)
puts "#{values}"