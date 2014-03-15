# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anthology do
    title 'Stories by Bill'
    association :author, factory: :user
    completed false
    type 'Anthology'
  end
end
