FactoryGirl.define do
  factory :novel do
    author 'Brian'
    title 'Thinking for Dummies'
    begun_on Time.now

    factory :novel_with_comments do
      association :commentables, factory: :comment
    end

    factory :novel_with_chapters do
      association :chapters, factory: :chapter
    end
  end
end