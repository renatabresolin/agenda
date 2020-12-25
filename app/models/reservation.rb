class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :user_id, presence: true
  validates :room_id, presence: true
  validates :start_time, uniqueness: { scope: :room }
end
