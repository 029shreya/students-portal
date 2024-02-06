module Validatable
	extend ActiveSupport::Concern
	included do 
		validates :name, presence: true
		validates :description, presence: true, length: {minimum: 3, maxmimum: 100}
	end
	
end