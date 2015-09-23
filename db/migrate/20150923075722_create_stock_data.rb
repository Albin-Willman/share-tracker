class CreateStockData < ActiveRecord::Migration
  def change
    create_table :stock_data do |t|
      t.belongs_to :stock, index: true, foreign_key: true

      t.string :ceo
      t.string :industry
      t.string :ticker
      t.string :market_cap
      t.string :shares
      t.float :pe
      t.float :pb
      t.float :ps
      t.string :name
      t.float :price
      t.string :revinue
      t.string :sales
      t.float :dividend
      t.string :debt
      t.timestamps null: false
    end
  end
end
