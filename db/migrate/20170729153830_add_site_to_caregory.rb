class AddSiteToCaregory < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :web_site, :string
  end
end
