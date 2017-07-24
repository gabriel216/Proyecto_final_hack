class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :categories
  # attr_accessor :name, :lastname, :cirif, :phone, :email, :password, :password_confirmation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
