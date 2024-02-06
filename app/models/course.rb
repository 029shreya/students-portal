class Course < ApplicationRecord
	include Validatabler
	has_and_belongs_to_many :students
	
  def self.ransackable_associations(auth_object = nil)
  	["students"]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "id_value", "title", "updated_at"]
  end
end
