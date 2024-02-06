class SubDemo < ApplicationRecord
  belongs_to :demo
  def self.ransackable_associations(auth_object = nil)
    ["demo"]
  end
  def self.ransackable_attributes(auth_object = nil)
      ["created_at", "demo_id", "description", "id", "id_value", "title", "updated_at"]
    end
end
