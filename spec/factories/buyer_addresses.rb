FactoryBot.define do
  factory :buyer_address do
    Faker::Config.locale = :ja
    # number {'4242424242424242'}
    # exp_month {Faker::Number.between(from: 1,   to: 12)}
    # exp_year {Faker::Number.between(from: 23,  to: 30)}
    # cvc {'123'}
    postal_code  {Faker::Number.number(digits: 7).to_s.insert(3, "-")}
    prefecture_id{Faker::Number.between(from: 2, to: 48)}
    municipalities{Gimei.city.kanji}
    address {Faker::Number.between(from: 1,  to: 999)}
    telephone_number{Faker::Number.number(digits: 11)}
  end
end
