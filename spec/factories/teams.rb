FactoryGirl.define do
  factory :team do
    name { [ "Smashing Boxes", "Farm Bureau" ].sample }
  end
end
