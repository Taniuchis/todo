class UserNotifierMailer < ApplicationMailer
  default from: "tania.m.jimenez24@gmail.com"

  def welcome_email
    mail(to: 'tania.m.jimenez24@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
