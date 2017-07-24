class RemoveColumnToCategories < ActiveRecord::Migration[5.1]
  def change
  	remove_column :categories, :status, :boolean, default: true  
  end
end
