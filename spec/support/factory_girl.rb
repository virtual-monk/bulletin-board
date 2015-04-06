require 'factory_girl'
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do
  factory :category do
    sequence(:category) { |n| "category#{n}" }
  end

  factory :event do
    sequence(:title) { |n| "My awesome event #{n}" }
    details "Super cool fun rad totally jivin event of the decade"
    user
    category
    address "33 Harrison Ave"
    city "Boston"
    state "Massachusetts"
    zip_code "02134"
  end

  factory :user do
    sequence(:email) { |n| "useragain#{n}@mymail.com" }
    password "supersecretstuffhere"
  end
end
