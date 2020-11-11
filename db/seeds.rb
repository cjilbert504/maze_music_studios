# frozen_string_literal: true

1.upto(24) do |n|
  Room.create(studio_number: n)
end
