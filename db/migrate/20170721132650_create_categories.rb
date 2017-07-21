class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :category_type
      t.string :title
      t.string :description
      t.date :start_date
      t.integer :duration
      t.time :start_hour
      t.time :end_hour
      t.string :location
      t.integer :cost
      t.integer :phone
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
