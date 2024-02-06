class StudentProject < ApplicationRecord
  #for has_many :through association
  belongs_to :student
  belongs_to :project
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "project_id", "student_id", "submission_date", "updated_at"]
    # Add other attributes as needed
  end
  def self.ransackable_associations(auth_object = nil)
    ["student", "project"]
  end
end
