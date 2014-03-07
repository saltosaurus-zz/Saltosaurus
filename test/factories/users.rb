FactoryGirl.define do
  factory :user do
    name 'Brian'
    sequence(:username) { |n| "Saltosaurus#{n}" }
    encrypted_password 'catsasdf'
  end
end
