FactoryGirl.define do
  factory :user do
    display_name 'Brian'
    sequence(:uid) { |n| "Saltosaurus#{n}" }
    provider 'facebook'
  end
end
