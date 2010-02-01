require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  def test_welcome_email
    user = users(:some_user_in_your_fixtures)

    # Send the email, then test that it got queued
    email = UserMailer.deliver_welcome_email(user)
    assert !ActionMailer::Base.deliveries.empty?

    # Test the body of the sent email contains what we expect it to
    assert_equal [user.email], email.to
    assert_equal "Welcome to My Awesome Site", email.subject
    assert_match /<h1>Welcome to example.com, #{user.name}<\/h1>/, email.encoded
    assert_match /Welcome to example.com, #{user.name}/, email.encoded
  end
end
