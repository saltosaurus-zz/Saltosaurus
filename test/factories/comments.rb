FactoryGirl.define do
  factory :comment do
    sequence(:author) { |i| "Andrew#{i}" }
    contents 'My back itches'
    association :story
  end
end