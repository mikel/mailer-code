require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  test "Mailer generates an email" do
    user = User.new(:email => 'mikel@test.lindsaar.net')
    email = UserMailer.welcome_email(user)
    assert_equal(email.subject, 'Welcome to RailsApp')
    assert_equal(email.to,      ['mikel@test.lindsaar.net'])
  end

  test "mailer using the 'user_mailer' layout file" do
    user = User.new(:email => 'mikel@test.lindsaar.net')
    email = UserMailer.welcome_email(user)
    assert(email.html_part.body.decoded =~ 'This is the HTML layout')
    assert(email.text_part.body.decoded =~ 'This is the Plain layout')
  end

end
