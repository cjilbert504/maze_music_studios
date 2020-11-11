# frozen_string_literal: true

class Room < ApplicationRecord
  enum occupancy_status: %i[vacant occupied]
  enum availability_status: %i[available unavailable]

  OCCUPANCY_OPTIONS = %w[vacant occupied].freeze
  AVAILABILITY_OPTIONS = %w[available unavailable].freeze
end
