class Student < ApplicationRecord
  paginates_per 5
  has_one_attached :profile_image
	has_many :blogs
	#for has_and many blongs
	has_and_belongs_to_many :courses
	has_many :student_projects
	has_many :projects, through: :student_projects
	validates :name, presence: true, length: {minimum:3}
	validates :last_name, presence: true
	validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :contact_number, presence: true
    before_create :greeting_message
    def greeting_message
    	puts "i will run before you create"
    end
    def full_name
    	"#{name} #{last_name}"
    end
     def self.ransackable_associations(auth_object = nil)
    ["blogs","courses", "projects", "student_projects"]
    # Add other associations as needed
  end
    def self.ransackable_attributes(auth_object = nil)
    ["age", "contact_number", "created_at", "email", "id", "id_value", "last_name", "name", "updated_at"]
    end
end
