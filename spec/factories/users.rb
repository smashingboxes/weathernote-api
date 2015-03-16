FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    team
  end
end
