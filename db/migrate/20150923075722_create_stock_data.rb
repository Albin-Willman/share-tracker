class CreateStockData < ActiveRecord::Migration
  def change
    create_table :stock_data do |t|
      t.belongs_to :stock, index: true, foreign_key: true

      t.string :ceo
      t.string :industry
      t.string :ticker
      t.integer :market_cap
      t.integer :shares
      t.float :pe
      t.float :pb
      t.float :ps
      t.string :name
      t.float :price
      t.integer :revinue
      t.integer :sales
      t.float :dividend
      t.integer :debt
      t.timestamps null: false
    end
  end
end
