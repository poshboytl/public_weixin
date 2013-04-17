# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    bizid "MyString"
    msgid ""
    url "MyString"
    title "MyString"
    content "MyText"
    images "MyText"
    source_url "MyString"
    repeat_message ""
    message_hash "MyString"
  end
end
