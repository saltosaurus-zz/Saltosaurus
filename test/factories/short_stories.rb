FactoryGirl.define do
  factory :short_story do
    association :author, factory: :user
    sequence(:title) { |n| "Thinking for Dummies #{n}" }
    published_on Time.now
    content 'Insert content here...'

    factory :short_story_with_comments do
      association :comments, factory: :comment
    end
  end
end