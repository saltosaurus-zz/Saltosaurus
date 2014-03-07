FactoryGirl.define do
  factory :chapter do
    association :novel, factory: :novel
    association :author, factory: :user
    sequence(:title) { |n| "Stabby Stab the stabber #{n}" }
    sequence(:number) { |n| n }
    content 'He stabbed a guy!'
    published_on Time.now
  end
end