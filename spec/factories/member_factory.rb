# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :member ,class: Member do
    username 'byronlee'
    email    'lbyronlee@gmail.com'
    cryptogram 'lijianghua'
    website  'baidu'	
    url	'http://www.baidu.com'
  end
end
