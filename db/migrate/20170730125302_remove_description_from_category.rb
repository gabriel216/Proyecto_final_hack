class RemoveDescriptionFromCategory < ActiveRecord::Migration[5.1]
  def change
   remove_column :categories, :description, default: true  
  end
end
