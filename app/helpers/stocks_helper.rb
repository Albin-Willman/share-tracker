module StocksHelper
  def preview_data_table(stock)
    data = stock.new_data
    generate_table(
      striped: true,
      hover: true,
      header: ['Attribute', 'Value'],
      content: StockDatum::ATTRIBUTES.map do |attribute|
        [attribute.to_s, data.public_send(attribute)]
      end
      )
  end
end
