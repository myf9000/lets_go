FactoryGirl.define do
  factory :event do
    name "Soccer"
    place "Wroclaw"
    description "We play in football"
    min_members 3
    max_members 10
  end
end
