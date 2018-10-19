class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]
  def index
  	   # if user_signed_in?
  		  # UserNotifierMailer.welcome_email.deliver_later
  	   # end  
   #SendmailJob.perform_later
  end
 
  def new
  end

  def about
     render "user_notifier_mailer/welcome_email"
  end
end
