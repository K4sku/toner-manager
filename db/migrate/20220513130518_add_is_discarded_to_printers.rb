# frozen_string_literal: true

class AddIsDiscardedToPrinters < ActiveRecord::Migration[7.0]
  def change
    add_column :printers, :is_discarded, :boolean, default: false
  end
end
