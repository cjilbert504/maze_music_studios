# frozen_string_literal: true

module RoomsHelper
  def room_number_format(room)
    "Room ##{room.studio_number}"
  end
end
