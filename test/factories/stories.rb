FactoryGirl.define do
  factory :story do
    association :author, factory: :user
    title 'Thinking for Dummies'
    content 'Think ya dummy!'
    published_on Time.now
    type 'Story'
  end
end