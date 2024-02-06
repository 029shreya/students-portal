class CreateManagers < ActiveRecord::Migration[7.1]
  def change
    create_table :managers do |t|
      t.text :name
      t.string :post
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
