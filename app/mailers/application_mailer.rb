class ApplicationMailer < ActionMailer::Base

  def user_share_url(user)
    @user = user
    mail(
        from:            "#{@user.email}",
        to:              ["#{@user.share_email}"],
        subject:         "#{@user.name} share to you short_url",
        template_path:   'mailer',
        template_name:   'user_share_url'
    )
  end

end
