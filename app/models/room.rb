class Room
  include Mongoid::Document

  field :name, type:String

  validates_presence_of :name
  validates_uniqueness_of :name ,:scope => :user_id
  validates_length_of :name,  maximum: 10

  has_many :members
  belongs_to :user

  def self.default
    find_by(name: Settings.default_room)
  end

  def default?
    name == Settings.default_room
  end
  
end
