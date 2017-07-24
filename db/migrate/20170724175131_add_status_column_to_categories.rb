class AddStatusColumnToCategories < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :status, :boolean, default: false 
  end
end
