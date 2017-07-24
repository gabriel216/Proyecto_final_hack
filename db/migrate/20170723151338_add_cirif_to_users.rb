class AddCirifToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :cirif, :string
  end
end
