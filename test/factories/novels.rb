FactoryGirl.define do
  factory :novel do
    association :author, factory: :user
    title 'Thinking for Dummies'
    completed false
    type 'Novel'
  end
end