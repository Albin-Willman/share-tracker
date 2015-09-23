class Stock < ActiveRecord::Base
  has_many :stock_data, dependent: :destroy
  enum parser_type: { nordnet: 1 }

  def parser
    parser_class.new
  end

  def new_data
    data = parser.call(identifier)
    data.stock = self
    data
  end

  def create_data!
    new_data.save!
  end

  def parser_class
    return Nordnet::Parser if nordnet?
    NullParser
  end
end
