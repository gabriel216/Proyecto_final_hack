class AddDescriptiontoCategory1 < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :description, :text,limit: 50.kilobytes
  end
end
