FactoryBot.define do
  factory :session do
    time_slot { "2022-11-05 10:40:10" }
    link { Date.current }
    allocine_id { "123456789" }
    association :movie, factory: :movie
    association :cinema, factory: :cinema
  end
end
