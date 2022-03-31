class PrinterModel < ApplicationRecord
  has_and_belongs_to_many :toner_models
  validates :make, presence: true
  validates :model, presence: true, uniqueness: true
end
