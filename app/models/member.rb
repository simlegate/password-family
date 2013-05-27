class Member
  include Mongoid::Document

  field :website,  type:String
  field :username, type:String
  field :portkey , type:String
  field :email,    type:String 
  field :url  ,    type:String

  validates_presence_of :username ,:portkey, :room_id
  validates_length_of :website,  maximum: 10
  validates_length_of :username, maximum: 20
  validates_length_of :portkey,  maximum: 20
  validates_length_of :email ,   maximum: 30
  validates_length_of :url,      maximum: 50

  belongs_to :room
end
