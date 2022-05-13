# frozen_string_literal: true

class RenameIsSpentTonerColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :toners, :is_spent, :is_discarded
  end
end
