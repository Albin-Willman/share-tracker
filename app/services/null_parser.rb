class NullParser
  def call(_identifier)
    StockDatum.new
  end
end