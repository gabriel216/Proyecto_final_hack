class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :lastname
      t.string :cirif
      t.integer :phone
      t.references :user, foreign_key: true
      t.integer :reputation

      t.timestamps
    end
  end
end
