class CreatePrinterModels < ActiveRecord::Migration[7.0]
  def change
    create_table :printer_models do |t|
      t.string :make
      t.string :model
      t.boolean :is_color
      t.string :toner_cyan
      t.string :toner_magenta
      t.string :toner_yellow
      t.string :toner_black
      t.boolean :has_replaceable_fuser
      t.string :fuser_kit
      t.boolean :has_replaceable_transfer_belt
      t.string :transfer_kit

      t.timestamps
    end
  end
end
