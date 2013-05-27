# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parlour_member ,class: Member do
    username 'byronlee'
    email    'lbyronlee@gmail.com'
    portkey 'lijianghua'
    website  'baidu'	
    url	'http://www.baidu.com'
  end
end
