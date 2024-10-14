class Department < ApplicationRecord
    before_save :capitalize_name
has_one :manager
has_one :manager_history, through: :manager
def self.ransackable_associations(auth_object = nil)
    ["manager", "manager_history"]
  end
   def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "name", "updated_at"]
  end

  private

  def capitalize_name
    self.name = name.capitalize
  end
end
