class Room
  include Mongoid::Document

  field :name, type:String

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name,  maximum: 10


  has_many :members ,class_name: 'Member'
  belongs_to :user ,class_name: 'User'
  
end
