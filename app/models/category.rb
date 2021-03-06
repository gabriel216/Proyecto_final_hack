class Category < ApplicationRecord
  require 'date'
  belongs_to :user

  before_create :normalize_name

  validates :title, 
            :presence => {:message => "El Titulo debe estar presente"},
            :length => { :minimum => 5, :maximum => 120, :message => 'El Titulo debe contener entre 5 y 120 caracteres' }
  validates :description, :presence => {:message => "La Descripcion debe estar presente"},
            :length => { :minimum => 5, :maximum => 10000, :message => 'La Descripcion debe contener entre 5 y 10000 caracteres' }
  validate :expiration_date 
  validates :duration, :presence => {:message => "La Duracion debe estar presente"}
  validates :start_hour, :presence => {:message => "La hora de comienzo debe estar presente"}
  validates :location, 
            :presence => {:message => "La Localidad debe estar presente" },
            :length => { :minimum => 5, :maximum => 10000, :message => 'La Localidad debe contener entre 5 y 120 caracteres' }
 validates :cost, :presence => {:message => "El costo debe estar presente"},
            :numericality => {:message => "El costo debe ser numerico"}
  validates :phone, :presence => {:message => "El Telefono debe estar presente"},
            :length => { :minimum => 7, :maximum => 16, :message => 'El Telefono debe contener entre 7 y 16 caracteres' }
  validates_inclusion_of :priority, :in => 0..10, :message => "La Prioridad debe estar entre 0 y 10"
  
  has_attached_file :avatar1, :styles => { :medium => "700x700", :thumb => "80x80#" }, 
  :default_url => "/images/"
  validates_attachment_content_type :avatar1, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar1, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]
  validates_attachment :avatar1, :presence => {:message => "La Publicidad debe contener al menos una Foto"}

["jpg", "jpeg", "gif", "png"];


  has_attached_file :avatar2, :styles => { :medium => "700x700", :thumb => "80x80#" }, 
  :default_url => "/images/"
  validates_attachment_content_type :avatar2, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar2, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]




  has_attached_file :avatar3, :styles => { :medium => "700x700", :thumb => "80x80#" }, 
  :default_url => "/images/"
  validates_attachment_content_type :avatar3, :content_type => /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar3, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]


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



