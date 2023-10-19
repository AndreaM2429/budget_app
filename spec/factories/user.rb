FactoryBot.define do
  factory :user do
    name { 'Tom' }
    email { 'example@example.com' }
    password { '1234567890' }
    confirmed_at { Time.now }
  end
end
