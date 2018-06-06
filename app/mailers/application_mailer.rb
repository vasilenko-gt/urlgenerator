class ApplicationMailer < ActionMailer::Base

  default from: 'url-generator@gmail.com'

  def user_share_url(url)
    @url = url
    mail(
        to:              'denis.vasilenko.as@gmail.com',
        template_path:   'mailer',
        template_name:   'user_share_url'
    )
  end

end
