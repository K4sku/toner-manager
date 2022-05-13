# frozen_string_literal: true

class CreateToners < ActiveRecord::Migration[7.0]
  def change
    create_table :toners do |t|
      t.decimal :purchase_net_price
      t.boolean :is_used
      t.boolean :is_spent

      t.timestamps
    end
  end
end
