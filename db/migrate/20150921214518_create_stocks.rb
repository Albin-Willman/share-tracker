class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :label
      t.integer :parser_type
      t.string :identifier

      t.timestamps null: false
    end
  end
end
