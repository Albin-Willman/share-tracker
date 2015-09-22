module Nordnet
  class NumbersParser < BaseParser
    PE_SELECTOR       = '.nyckeltalStapelContainer:nth-child(5) .nyckeltalStapelUpp+ span'
    PS_SELECTOR       = '.nyckeltalStapelContainer:nth-child(7) .nyckeltalStapelUpp+ span'
    PB_SELECTOR       = '.nyckeltalStapelContainer:nth-child(9) .nyckeltalStapelUpp+ span'
    REVINUE_SELECTOR  = '.divider+ .divider .text+ td'
    SALES_SELECTOR    = 'tr:nth-child(2) .text+ td'
    PRICE_SELECTOR    = '#instrumentcontainer td:nth-child(3)'
    DIVIDEND_SELECTOR = '.nyckeltalStapelContainer:nth-child(11) .nyckeltalStapelUpp+ span'
    DEBT_SELECTOR     = 'tr:nth-child(14) .text+ td'

    def call(page, sd = StockData.new)
      sd.pe       = string_to_float(find_field(PE_SELECTOR, page))
      sd.ps       = string_to_float(find_field(PS_SELECTOR, page))
      sd.pb       = string_to_float(find_field(PB_SELECTOR, page))
      sd.revinue  = string_to_integer(find_field(REVINUE_SELECTOR, page))
      sd.sales    = string_to_integer(find_field(SALES_SELECTOR, page))
      sd.price    = string_to_float(find_field(PRICE_SELECTOR, page))
      sd.dividend = string_to_float(find_field(DIVIDEND_SELECTOR, page))
      sd.debt     = string_to_integer(find_field(DEBT_SELECTOR, page))
      sd
    end
  end
end