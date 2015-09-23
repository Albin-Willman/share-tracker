class StockBuilderClerk
  attr_accessor :errors
  def call(label, url)
    stock = Stock.new(label: label, url: url, parser_type: parser_type_from_url(url))
    parser = stock.parser_class
    stock.identifier = parser.url_to_identifier(url)
    stock
  end

  private

  def parser_type_from_url(url)
    url = url.gsub(/https:\/\//, '')
    return 'nordnet' if url.starts_with?('www.nordnet')
    errors = ['No parser found']
    nil
  end
end