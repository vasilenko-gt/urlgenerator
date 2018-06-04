class ApplicationMailer < ActionMailer::Base

  default from: 'denis.vasilenko.gt@gmail.com'

  def user_share_url(user)
    @user = user
    mail(
        to:              ["#{@user.share_email}"],
        subject:         'Новый заказ запчастей на Alex-Avto',
        template_path:   'mailer',
        template_name:   'user_share_url'
    )
  end

end
