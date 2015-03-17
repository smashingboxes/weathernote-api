FactoryGirl.define do
  factory :note do
    status { [ "Delayed", "Rescheduled", "Canceled" ].sample }
    message { [ "Game is delayed 1 hour", "Game is rescheduled for tomorrow", "Game's off" ].sample }
    user
  end
end
