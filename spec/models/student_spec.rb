require 'rails_helper'

RSpec.describe Student, type: :model do
  it "require a first name" do 
student = Student.new(last_name: "doe", age:20, email: "john2example.com", contact_number: "1234567890")
expect(student).to be_invalid
expect(student.errors[:name]).to include ("cant blank")
end




end
