class UserMailer < ActionMailer::Base
  default_url_options[:host] = "example.com"
  default :from => "notifications@example.com"
  
  def welcome_email(user)
    @user = user
    @url  = user_url(@user)
    mail(:to => user.email,
         :subject => "Welcome to My Awesome Site")
  end
  
end
