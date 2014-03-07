FactoryGirl.define do
  factory :collection do
    title 'Book of Stories'
    association :author, factory: :user
    begun_on Time.now
  end
end
