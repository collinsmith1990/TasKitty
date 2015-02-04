FactoryGirl.define do  
  
  factory :membership do
    project_id 1
    user_id 1
  end

  factory :user do
    user_name "MyString"
    first_name "MyString"
    last_name "MyString"
    email "MyString"
  end

  factory :project do
    title "TestProject"
  end
end
