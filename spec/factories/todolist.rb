FactoryBot.define do
  factory :todo_list do
  	association :user
    id {'1'}
    title { 'lista' }
    description {'Sumner'}
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    user_id {user.id}
  end

  factory :todo_list_without_title, class: TodoList do
  	association :user
    id {'1'}
    title { nil }
    description {'Sumner'}
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    user_id {user.id}
  end

  factory :todo_list_without_description, class: TodoList do
  	association :user
    id {'1'}
    title { 'lista' }
    description { nil }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    user_id {user.id}
  end

  factory :todo_list_without_user_id, class: TodoList do
    id {'1'}
    title { 'lista' }
    description { 'description' }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    user_id {nil}
  end

  factory :todo_list_without_created_at, class: TodoList do
  	association :user
    id {'1'}
    title { 'lista' }
    description { 'description' }
    created_at { nil }
    updated_at {'2018-10-15 14:56:34.623712'}
    user_id {user.id}
  end

  factory :todo_list_without_updated_at, class: TodoList do
  	association :user
    id {'1'}
    title { 'lista' }
    description { 'description' }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at { nil }
    user_id {user.id}
  end

end