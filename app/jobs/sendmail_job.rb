class SendmailJob < ApplicationJob
  queue_as :default
  discard_on ActiveJob::DeserializationError

  def perform(*args)
    # Do something later
    #UserNotifierMailer.welcome_email().deliver_later
    # @todo_lists_task = @todo_lists.pending_tasks
    # @user_mail = current_user
    UserNotifierMailer.task_email(todo_lists_task, user_mail).deliver
  end
end
