json.extract! @stock, :id, :label, :parser_type, :identifier, :created_at, :updated_at
json.array!(@stock.stock_data) do |stock_data|
  StockDatum::ATTRIBUTES.each do |attribute|
    json.extract! stock_data, attribute
  end
  json.extract! stock_data, :created_at
end
