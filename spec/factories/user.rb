FactoryBot.define do
  factory :user do
    id {'1'}
    email { "John@gmail.com" }
    password {'123456'}
    encrypted_password  { "$2a$11$E7HMbUrZ7RvEi2ojupJG9umPFclE28Nuudgtnf9N7vbSDlrrmRweO" }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    username {'John'}
  end

  factory :user_without_email, class: User do
    id {'1'}
    email { nil }
    password {'123456'}
    encrypted_password  { "$2a$11$E7HMbUrZ7RvEi2ojupJG9umPFclE28Nuudgtnf9N7vbSDlrrmRweO" }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    username {'John'}
  end


  factory :user_without_password, class: User do
    id {'1'}
    email { "John@gmail.com" }
    password { nil }
    encrypted_password  { "$2a$11$E7HMbUrZ7RvEi2ojupJG9umPFclE28Nuudgtnf9N7vbSDlrrmRweO" }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    username {'John'}
  end

  factory :user_without_encrypted_password, class: User do
    id {'1'}
    email { "John@gmail.com" }
    password {'123456'}
    encrypted_password  { nil }
    created_at { '2018-10-15 14:56:34.623712' }
    updated_at {'2018-10-15 14:56:34.623712'}
    username {'John'}
  end

  factory :user_without_created_at, class: User do
    id {'1'}
    email { "John@gmail.com" }
    password {'123456'}
    encrypted_password  { "$2a$11$E7HMbUrZ7RvEi2ojupJG9umPFclE28Nuudgtnf9N7vbSDlrrmRweO" }
    created_at { nil }
    updated_at {'2018-10-15 14:56:34.623712'}
    username {'John'}
  end

  factory :user_without_updated_at, class: User do
    id {'1'}
    email { "John@gmail.com" }
    password {'123456'}
    encrypted_password  { "$2a$11$E7HMbUrZ7RvEi2ojupJG9umPFclE28Nuudgtnf9N7vbSDlrrmRweO" }
    created_at {'2018-10-15 14:56:34.623712'}
    updated_at { nil }
    username {'John'}
  end

  factory :user_without_username, class: User do
    id {'1'}
    email { "John@gmail.com" }
    password {'123456'}
    encrypted_password  { "$2a$11$E7HMbUrZ7RvEi2ojupJG9umPFclE28Nuudgtnf9N7vbSDlrrmRweO" }
    created_at {'2018-10-15 14:56:34.623712'}
    updated_at {'2018-10-15 14:56:34.623712'}
    username { nil }
  end

end