class StockSerializer < ActiveModel::Serializer
  attributes :id, :label, :parser_type, :identifier
  has_many :stock_data
end
