FactoryGirl.define do
  factory :chapter do
    association :novel, factory: :novel
    sequence(:title) { |n| "Stabby Stab the stabber #{n}" }
    sequence(:number) { |n| n }
    content 'He stabbed a guy!'
    author 'Brian'
    published_on Time.now
  end
end