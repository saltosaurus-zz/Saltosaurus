FactoryGirl.define do
  factory :update do
    association :author, factory: :user
    content 'My back itches'
    title 'My life'
    published_on Time.now
  end
end