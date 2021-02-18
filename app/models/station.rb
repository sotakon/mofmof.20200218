class Station < ApplicationRecord
  belongs_to :chintai, inverse_of: :stations
end
