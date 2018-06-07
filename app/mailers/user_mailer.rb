class UserMailer < ActionMailer::Base

  def sample_email(user)
    @user = user
    puts '!!!!!!!!!'
    puts @user.share_email
    puts '!!!!!!!!!'
    mail(
        from:     @user.email,
        to:       @user.share_email,
        subject:  'Sample Email'
    )
  end

end
