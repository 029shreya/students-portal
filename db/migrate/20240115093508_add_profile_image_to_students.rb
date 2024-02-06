class AddProfileImageToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :profile_image, :string
    add_column :students, :profile_image_data, :text
  end
end
