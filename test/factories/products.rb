# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    sequence(:name){ |n| "Product name #{n}" }
    price 1.5
    description "My description."
  end
end
