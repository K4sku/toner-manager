class AddPrinterRefToToner < ActiveRecord::Migration[7.0]
  def change
    add_reference :toners, :printer, null: true, index: true, foreign_key: true
  end
end
