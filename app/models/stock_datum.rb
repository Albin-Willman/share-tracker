class StockDatum < ActiveRecord::Base
  belongs_to :stock
  ATTRIBUTES = [:ceo, :industry, :ticker, :market_cap, :shares, :pe, :pb, :ps, :name, :price, :revinue, :sales, :dividend, :debt]
end
