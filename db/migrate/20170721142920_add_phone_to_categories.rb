class AddPhoneToCategories < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :phone, :string
  end
end
