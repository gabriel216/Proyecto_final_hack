class RemovePhoneToClients < ActiveRecord::Migration[5.1]
  def change
  	  	remove_column :clients, :phone, :integer
  end
end
