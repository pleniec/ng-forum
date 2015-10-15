FactoryGirl.define do
  factory :group do
    name { SecureRandom.uuid }
    glyphicon { BootstrapHelper::GLYPHICONS.sample }

    after(:create) { |g| create_list(:category, 6, group_id: g.id) }
  end

  factory :category do
    name { SecureRandom.uuid }
  end
end
