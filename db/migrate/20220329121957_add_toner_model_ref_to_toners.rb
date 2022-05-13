# frozen_string_literal: true

class AddTonerModelRefToToners < ActiveRecord::Migration[7.0]
  def change
    add_reference :toners, :toner_model, null: false, foreign_key: true
  end
end
