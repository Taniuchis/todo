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
end