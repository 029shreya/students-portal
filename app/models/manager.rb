class Manager < ApplicationRecord
  belongs_to :department
  has_one :manager_history
   def self.ransackable_attributes(auth_object = nil)
    ["created_at", "department_id", "id", "id_value", "name", "post", "updated_at"]
  end
end
