class TodoTask < ApplicationRecord
  belongs_to :todo_list
  validates :content, presence: true
  validates :todo_list_id, presence: true
  
  def completed?
   !completed_at.blank?
  end
end
