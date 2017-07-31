class Category < ApplicationRecord
  require 'date'
  belongs_to :user

  validates :title, :presence => true, :length => { :minimun => 5, :maximum => 70}
  before_create :normalize_name
  validates :description, :presence => true, :length => { :minimun => 5, too_short: 
    "El mínimo de caracteres es cinco", 
    :maximum => 50000, too_long: "Ha excedido el máximo de caracteres"}
  validate :expiration_date 
  validates :duration, :presence => true, numericality: true
  validates :start_hour, :presence => true
  validates :location, :presence => true, :length => { :minimun => 5, :maximum => 100}
  validates :cost, :presence => true, numericality: true
  validates :phone, numericality: true, :length => { :minimun => 7, :maximum => 16}



  has_attached_file :avatar1, :styles => { :medium => "700x700", :thumb => "80x80#" }, 
  :default_url => "/images/"
  validates_attachment_content_type :avatar1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar1, matches: [/png\Z/, /jpe?g\Z/]

  has_attached_file :avatar2, :styles => { :medium => "700x700", :thumb => "80x80#" }, 
  :default_url => "/images/"
  validates_attachment_content_type :avatar2, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar2, matches: [/png\Z/, /jpe?g\Z/]

  has_attached_file :avatar3, :styles => { :medium => "700x700", :thumb => "80x80#" }, 
  :default_url => "/images/"
  validates_attachment_content_type :avatar3, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar3, matches: [/png\Z/, /jpe?g\Z/]

private

def expiration_date
  if start_date? && start_date < Date.today 
    errors.add(:start_date, "No puede ser en el pasado")
  end
end

def normalize_name
  self.title.capitalize!
end

end
