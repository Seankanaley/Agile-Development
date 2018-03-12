class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_mailer.subject
  #
  def contact_mailer(email_address, first_name, last_name, question)
    @greeting = "Hello from GitScrubs:"
    @email_address = email_address
    @first_name = first_name
    @last_name = last_name
    @question = question
    attachment_1 = File.open('app/assets/images/gitScrubsLogo_alternate.png', 'rb') {|file| file.read}
    attachment_2 = File.open('app/assets/images/gitScrubsName_footer.png', 'rb') {|file| file.read}
    attachments.inline['gitScrubsLogo_alternate.png'] = attachment_1
    attachments.inline['gitScrubsName_footer.png'] = attachment_2
    mail(to: @email_address, subject: "Thank you for contacting us!")
    #bcc: "jasonstanl3y@gmail.com",
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.shift_mailer.subject
  #
  def shift_mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_mailer.subject
  #
  def welcome_mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
