class User < ApplicationRecord
  
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable
  
  has_many :urls

  # def send_email
  #   ApplicationMailer.user_share_url(self).deliver_now
  # end

end
