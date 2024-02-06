class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.integer :student_id

      t.timestamps
    end
  end
end
