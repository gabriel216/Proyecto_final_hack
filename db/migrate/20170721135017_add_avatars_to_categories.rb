class AddAvatarsToCategories < ActiveRecord::Migration[5.1]
	def self.up
	  	change_table :categories do |t|
	  		t.attachment :avatar1
	  		t.attachment :avatar2
	  		t.attachment :avatar3
		end
	end

	def self.down
		drop_attached_file :categories, :avatar1	
		drop_attached_file :categories, :avatar2	
		drop_attached_file :categories, :avatar3	
	end
end
