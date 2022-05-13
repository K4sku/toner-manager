# frozen_string_literal: true

class CreateTonerModels < ActiveRecord::Migration[7.0]
  def change
    create_table :toner_models do |t|
      t.string :make
      t.string :model
      t.string :symbol
      t.string :color

      t.timestamps
    end
  end
end
