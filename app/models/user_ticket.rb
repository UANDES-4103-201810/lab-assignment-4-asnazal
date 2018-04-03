class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  validates :user, presence: true
  validates :ticket, presence: true
end
