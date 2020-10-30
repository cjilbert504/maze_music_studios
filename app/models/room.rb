class Room < ApplicationRecord
	enum occupancy_status: [:vacant, :occupied]
	enum status: [:available, :unavailable]
end