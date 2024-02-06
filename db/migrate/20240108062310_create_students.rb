class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.text :last_name
      t.integer :age
      t.text :email
      t.integer :contact_number

      t.timestamps
    end
  end
end
