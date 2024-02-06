class Blog < ApplicationRecord
	belongs_to :student
	def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "id_value", "student_id", "title", "updated_at"]
    # Add other attributes as needed
  end
  def self.ransackable_associations(auth_object = nil)
  ["student"]
end
end
