class AddPhoneToClients < ActiveRecord::Migration[5.1]
  def change
  	  	add_column :clients, :phone, :string
  end
end
