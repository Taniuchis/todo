FactoryBot.define do

	factory :todo_task, class: TodoTask do
	   association :todo_list
	    id {'1'}
	    content {'Sumner'}
	    todo_list_id {todo_list.id}
	    created_at { '2018-10-15 14:56:34.623712' }
	    updated_at {'2018-10-15 14:56:34.623712'} 
  end

  factory :todo_task_without_content, class: TodoTask do
	   association :todo_list
	    id {'1'}
	    content { nil }
	    todo_list_id { todo_list.id }
	    created_at { '2018-10-15 14:56:34.623712' }
	    updated_at {'2018-10-15 14:56:34.623712'}  
  end

  factory :todo_task_without_todo_list_id, class: TodoTask do
	   association :todo_list
	    id {'1'}
	    content { 'Sumner' }
	    todo_list_id { nil }
	    created_at { '2018-10-15 14:56:34.623712' }
	    updated_at {'2018-10-15 14:56:34.623712'}   
  end

   factory :todo_task_without_created_at, class: TodoTask do
	   association :todo_list
	    id {'1'}
	    content { 'Sumner' }
	    todo_list_id { todo_list.id }
	    created_at { nil }
	    updated_at {'2018-10-15 14:56:34.623712'}   
  end

   factory :todo_task_without_updated_at, class: TodoTask do
	   association :todo_list
	    id {'1'}
	    content { 'Sumner' }
	    todo_list_id { todo_list.id }
	    created_at { '2018-10-15 14:56:34.623712' }
	    updated_at { nil }   
  end

end