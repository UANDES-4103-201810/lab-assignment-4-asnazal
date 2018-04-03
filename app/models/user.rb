class User < ApplicationRecord
  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets
	validates :password, length: { in: 8..12}
	validates :phone, length: {in: 9..12}
end
