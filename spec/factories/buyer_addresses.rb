FactoryBot.define do
  factory :buyer_address do
    Faker::Config.locale = :ja
    token                 { 'abcdefg' }
    postal_code           { Faker::Number.number(digits: 7).to_s.insert(3, '-') }
    prefecture_id         { Faker::Number.between(from: 2, to: 3) }
    municipalities        { Gimei.city.kanji }
    address               { Faker::Number.between(from: 1, to: 999) }
    building              { Faker::Lorem.word }
    telephone_number      { Faker::Number.number(digits: 11) }
  end
end
