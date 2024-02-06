class ManagerHistory < ApplicationRecord
  belongs_to :manager
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "joining_date", "manager_id", "updated_at"]
  end
end
