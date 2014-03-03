FactoryGirl.define do
  factory :story do
    author 'Brian'
    title 'Thinking for Dummies'

    factory :story_with_comments do
      association :comments, factory: :comment
    end
  end
end