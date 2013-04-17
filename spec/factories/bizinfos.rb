# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bizinfo do
    bizid "MyString"
    title "MyString"
    desc "MyText"
    account "MyString"
    owner "MyString"
    boost 1.5
  end
end
