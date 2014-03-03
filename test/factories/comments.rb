FactoryGirl.define do
  factory :comment do
    author 'Andrew'
    sequence(:content) { |c| 'My back itches #{c}' }
    association :story
  end
end