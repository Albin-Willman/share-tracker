json.array!(@stocks) do |stock|
  json.extract! stock, :id, :label, :parser_type, :identifier
  json.url stock_url(stock, format: :json)
end
