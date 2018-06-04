class User < ApplicationRecord
  
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable
  
  has_many :urls

  after_update  :send_email

  def send_email
    ApplicationMailer.user_share_url(self).deliver_now
  end

end
