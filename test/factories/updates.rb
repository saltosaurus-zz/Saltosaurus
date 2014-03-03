FactoryGirl.define do
  factory :update do
    author 'Brian'
    content 'My back itches'
    title 'My life'
    published_on Time.now
  end
end