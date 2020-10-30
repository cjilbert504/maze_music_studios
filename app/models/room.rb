class Room < ApplicationRecord
	enum status: [:available, :unavailable]
end