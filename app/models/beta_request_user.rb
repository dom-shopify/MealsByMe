class BetaRequestUser < ActiveRecord::Base
	validates :zip, presence: true
	validates :delivery_type, presence: true
	
end
