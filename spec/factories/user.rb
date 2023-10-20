FactoryBot.define do
  factory :user do
    id { rand(5..100_000_000) }
    name { 'Tom' }
    email { "example_#{id}@example.com" }
    password { '1234567890' }
    confirmed_at { Time.now }
  end
end
