class Moneta < ApplicationRecord
  validates :flag, presence: true
  validates :nominal, presence: true
  validates :nr_kat, presence: true
  validates :stop, presence: true
  validates :rok, presence: true, numericality: { only_integer: true }
end
