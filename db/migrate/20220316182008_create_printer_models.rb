# frozen_string_literal: true

class CreatePrinterModels < ActiveRecord::Migration[7.0]
  def change
    create_table :printer_models do |t|
      t.string :make
      t.string :model
      t.boolean :is_color
      t.boolean :is_duplex
      t.boolean :is_network
      t.boolean :has_replaceable_fuser
      t.boolean :has_replaceable_transfer_belt

      t.timestamps
    end
  end
end
