class Stock < ActiveRecord::Base
  enum parser_type: { nordnet: 1 }
end
