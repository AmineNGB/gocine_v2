FactoryBot.define do
  factory :movie do
    photo_url { "http://www.picture.com" }
    title { "harry potter" }
    synopsis { "text" }
    duration { "2h30" }
    genre { ["Action", "Thriller"] }
    rate_press { 1.2 }
    rate_viewer { 2.3 }
    date_release { Date.current }
    allocine_id { "123456789" }

    association :session, factory: :session
    association :cinema, factory: :cinema
  end
end
