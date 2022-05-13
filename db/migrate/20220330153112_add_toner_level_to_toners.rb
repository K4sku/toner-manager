# frozen_string_literal: true

class AddTonerLevelToToners < ActiveRecord::Migration[7.0]
  def change
    add_column :toners, :level, :integer
  end
end
