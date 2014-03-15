FactoryGirl.define do
  factory :collection do
    title 'Book of Stories'
    association :author, factory: :user
    completed false
    type 'Collection'
  end
end
