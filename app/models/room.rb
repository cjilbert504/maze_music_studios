# frozen_string_literal: true

class Room < ApplicationRecord
  enum occupancy_status: %i[vacant occupied]
  enum availability_status: ["available", "unavailable", "available soon"]
end
