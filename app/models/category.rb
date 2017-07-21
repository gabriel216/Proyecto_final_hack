class Category < ApplicationRecord
  belongs_to :client
  has_attached_file :avatar1, :styles => { :medium => "300x300>", :thumb => "100x100#" }, 
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :avatar2, :styles => { :medium => "300x300>", :thumb => "100x100#" }, 
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar2, :content_type => /\Aimage\/.*\Z/
  has_attached_file :avatar3, :styles => { :medium => "300x300>", :thumb => "100x100#" }, 
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar3, :content_type => /\Aimage\/.*\Z/
end
