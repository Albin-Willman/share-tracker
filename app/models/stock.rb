class Stock < ActiveRecord::Base
  has_many :stock_data
  enum parser_type: { nordnet: 1 }

  def parser
    parser_class.new
  end

  def update_data!
    data = parser.call(identifier)
    data.stock = self
    data.save!
  end

  private

  def parser_class
    return Nordnet::Parser if nordnet?
    NullParser
  end
end
