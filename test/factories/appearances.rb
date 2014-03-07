# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appearance do
    association :anthology, factory: :anthology
    association :short_story, factory: :short_story
  end
end
