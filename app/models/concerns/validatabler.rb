module Validatabler
	extend ActiveSupport::Concern
		included do 
		validates :title, presence: true
		validates :body, presence: true, length: {minimum: 3, maxmimum: 100}
	end
	end