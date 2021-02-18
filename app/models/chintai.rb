class Chintai < ApplicationRecord
  has_many :stations, dependent: :destroy, inverse_of: :chintai
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
  validates :name,presence: true
  validates :rent, numericality: true
  validates :adress,presence: true
  validates :age, numericality: true
end
