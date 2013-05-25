# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parlour_members ,class: Member do
    username 'byronlee'
    email    'lbyronlee@gmail.com'
    password 'lijianghua'
    website  'baidu'	
    url	'http://www.baidu.com'
    association :room ,factory: :parlour
  end
end
