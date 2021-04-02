FactoryBot.define do
    factory :stock do
        title { Faker::Lorem.word }
        ticker { Faker::Lorem.word[0,4] }
    end
end