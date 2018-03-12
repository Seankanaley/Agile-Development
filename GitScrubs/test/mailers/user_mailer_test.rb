require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "contact_mailer" do
    mail = UserMailer.contact_mailer
    assert_equal "Contact mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shift_mailer" do
    mail = UserMailer.shift_mailer
    assert_equal "Shift mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "welcome_mailer" do
    mail = UserMailer.welcome_mailer
    assert_equal "Welcome mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
