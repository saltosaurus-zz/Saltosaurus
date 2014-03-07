FactoryGirl.define do
  factory :story do
    association :author, factory: :user
    title 'Thinking for Dummies'
    content 'Think ya dummy!'
    published_on Time.now

    factory :story_with_comments do
      association :commentable, factory: :comment
    end
  end
end