
FactoryGirl.define do
  factory :apartment, :class => Refinery::Apartments::Apartment do
    sequence(:block) { |n| "refinery#{n}" }
  end
end

