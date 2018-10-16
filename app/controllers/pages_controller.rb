class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]
  def index
  	if user_signed_in?
  		UserNotifierMailer.welcome_email.deliver_later
  	end 
  end
 
  def new
  end

  def about

  end
end
