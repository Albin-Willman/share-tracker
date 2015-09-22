class StockData
  ATTRIBUTES = [:ceo, :industry, :ticker, :market_cap, :shares, :pe, :pb, :ps, :name, :price, :revinue, :sales, :dividend, :debt]
  attr_accessor(*ATTRIBUTES)
end
