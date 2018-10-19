class UserNotifierMailer < ApplicationMailer
  default from: "tania.m.jimenez24@gmail.com"

  def task_email(todo_lists_task, user_mail)
  	 @todo_lists = todo_lists_task
  	 @user_mail = user_mail
    mail(to: 'tania.m.jimenez24@gmail.com', subject: 'Welcome to My Awesome Site')
  end

  # def task_email()
  	
  #   mail(to: 'tania.m.jimenez24@gmail.com', subject: 'Welcome to My Awesome Site')
  # end
end
