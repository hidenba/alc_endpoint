class Sensor < ApplicationRecord
  validates :value, :client_id, presence: true
end
