class StockDatumSerializer < ActiveModel::Serializer
  attributes *StockDatum::ATTRIBUTES
end
