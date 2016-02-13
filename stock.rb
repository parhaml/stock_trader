def stock_picker(rates)
  total = 0
  answer = []
  rates.each do |buy|
    rates.each do |sell|
      if ((buy < sell && rates.index(buy) < rates.index(sell))) && sell - buy > total
        total = sell - buy
        answer = [rates.index(buy), rates.index(sell)]
      end
    end
  end
  puts answer.inspect
end



