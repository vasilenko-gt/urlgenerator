class ApplicationMailer < ActionMailer::Base

  default from: 'url-generator@gmail.com'

  def share_email(user)
    @user = user
    mail(
        to:              'denis.vasilenko.as@gmail.com',
        template_path:   'mailer',
        template_name:   'user_share_url'
    )
  end

end
