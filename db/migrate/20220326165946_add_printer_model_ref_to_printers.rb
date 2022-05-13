# frozen_string_literal: true

class AddPrinterModelRefToPrinters < ActiveRecord::Migration[7.0]
  def change
    add_reference :printers, :printer_model, null: false, foreign_key: true
  end
end
