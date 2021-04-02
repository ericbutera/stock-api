# frozen_string_literal: true

class AddCikToStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :stocks, :cik, :int
  end
end
