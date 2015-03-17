FactoryGirl.define do
  factory :user do
    email { ["ian@smashingboxes.com", "farmer@farmbureau.com"].sample }
  end
end
