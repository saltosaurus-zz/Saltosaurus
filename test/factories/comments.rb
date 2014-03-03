FactoryGirl.define do
  factory :comment do
    sequence(:author) { |i| "Andrew#{i}" }
    content 'My back itches'
    association :story
  end
end