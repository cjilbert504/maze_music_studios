# frozen_string_literal: true

class AddStudioNumberToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :studio_number, :integer
  end
end
