class Stock < ActiveRecord::Base
  enum parser_type: { nordnet: 1 }

  def parser
    return NordnetParser.new if nordnet?
    NullParser.new
  end
end
