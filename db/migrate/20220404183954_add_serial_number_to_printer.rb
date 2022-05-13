# frozen_string_literal: true

class AddSerialNumberToPrinter < ActiveRecord::Migration[7.0]
  def change
    add_column :printers, :serial_no, :string
  end
end
