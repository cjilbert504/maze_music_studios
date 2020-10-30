class Room < ApplicationRecord
	enum occupancy_status: [:vacant, :occupied]
	enum availability_status: [:available, :unavailable]

	OCCUPANCY_OPTIONS = %w(vacant occupied)
	AVAILABILITY_OPTIONS = %w(available unavailable)
end