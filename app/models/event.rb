class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validates :palce, presence: true
  validates :start_date_timestamps

private 
 def start_date_timestamps
   if start_date<timestamps
   errors.add(:timestamps, "must be before start_date")  
   end
  end
end
