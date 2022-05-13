# frozen_string_literal: true

class AddMacAddressFieldToPrinters < ActiveRecord::Migration[7.0]
  def change
    add_column :printers, :mac_address, :string
  end
end
