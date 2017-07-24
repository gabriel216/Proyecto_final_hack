class AddColumnToCategories < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :status, :boolean, default: true 
  	add_column :categories, :priority, :integer, :null => false, :default => 0 
  end
end
