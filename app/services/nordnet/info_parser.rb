module Nordnet
  class InfoParser < BaseParser
    CEO_SELECTOR      = 'tr:nth-child(9) .betona+ td'
    INDUSTRY_SELECTOR = '.first td~ .betona+ td'
    TICKER_SELECTOR   = 'tr:nth-child(6) .betona+ td'
    CAP_SELECTOR      = 'tr:nth-child(4) .betona+ td'
    SHARES_SELECTOR   = '.wrap tr:nth-child(3) td:nth-child(2)'
    NAME_SELECTOR     = '.title'

    def call(page)
      parse!(page)
    end

    private

    def parse!(page, sd = StockDatum.new)
      sd.ceo        = find_field(CEO_SELECTOR, page)
      sd.industry   = find_field(INDUSTRY_SELECTOR, page)
      sd.ticker     = find_field(TICKER_SELECTOR, page)
      sd.market_cap = string_to_integer(find_field(CAP_SELECTOR, page))
      sd.shares     = string_to_integer(find_field(SHARES_SELECTOR, page))
      sd.name       = find_field(NAME_SELECTOR, page).strip
      sd
    end
  end
end