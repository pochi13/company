FactoryBot.define do
  factory :company do
    name { Faker::Name.last_name }
    introduce { Faker::Internet.free_email }

    
  end
end
