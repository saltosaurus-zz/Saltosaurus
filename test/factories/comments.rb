FactoryGirl.define do
  factory :comment do
    association :author, factory: :user
    sequence(:content) { |c| "My back itches #{c}" }
    association :commentable, factory: :story
  end
end