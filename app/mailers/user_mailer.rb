class UserMailer < ActionMailer::Base
  default :from => "notifications@railsapp.example.com",
          :reply_to => "support@railsapp.example.com",
          :return_path => "system@railsapp.example.com"

  def welcome_email(user)
    @user = user
    @usr = "http://example.com/login"
    mail(:to => user.email,
         :subject => "Welcome to RailsApp")
  end
end
