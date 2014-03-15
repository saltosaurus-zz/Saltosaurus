FactoryGirl.define do
  factory :blog_entry do
    association :author, factory: :user
    content 'My back itches'
    sequence(:title) { |n| "My life#{n}" }
    published_on Time.now
    type 'BlogEntry'
  end
end