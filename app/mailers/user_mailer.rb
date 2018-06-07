class UserMailer < ActionMailer::Base

  default from: 'url-generator@gmail.com'

  def sample_email(user)
    @user = user
    mail(
        to:       @user.share_email,
        subject:  'Sample Email'
    )
  end

end
