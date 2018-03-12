# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/contact_mailer
  def contact_mailer
    UserMailer.contact_mailer
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/shift_mailer
  def shift_mailer
    UserMailer.shift_mailer
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_mailer
  def welcome_mailer
    UserMailer.welcome_mailer
  end

end
