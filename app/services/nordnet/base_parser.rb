module Nordnet
  class BaseParser
    protected
    def string_to_integer(string)
      string.gsub(/\s+/, "").to_i
    end

    def string_to_float(string)
      string.gsub(/\s+/, "").to_f
    end

    def find_field(selector, page)
      page.css(selector).text
    end
  end
end