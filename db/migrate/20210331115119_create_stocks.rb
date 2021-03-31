class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :title
      t.string :ticker

      t.timestamps
    end
  end
end
