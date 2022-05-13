# frozen_string_literal: true

class CreatePartKits < ActiveRecord::Migration[7.0]
  def change
    create_table :part_kits do |t|
      t.string :type
      t.string :oem_name
      t.decimal :purchase_net_price

      t.timestamps
    end
  end
end
