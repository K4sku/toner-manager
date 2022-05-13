# frozen_string_literal: true

class TonerModel < ApplicationRecord
  has_and_belongs_to_many :printer_models

  scope :black, -> { where(color: 'black') }
  scope :cyan, -> { where(color: 'cyan') }
  scope :magenta, -> { where(color: 'magenta') }
  scope :yellow, -> { where(color: 'yellow') }
end
