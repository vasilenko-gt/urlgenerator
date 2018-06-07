class User < ApplicationRecord

  devise :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable
  
  has_many :urls

  validates :name,
            presence: true

end
