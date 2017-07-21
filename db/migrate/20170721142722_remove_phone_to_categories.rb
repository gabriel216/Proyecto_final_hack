class RemovePhoneToCategories < ActiveRecord::Migration[5.1]
  def change
  	remove_column :categories, :phone, :integer
  end
end
