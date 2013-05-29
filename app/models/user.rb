# -*- coding: utf-8 -*-
class User
  include Mongoid::Document

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""
  

  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time


  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  has_many :rooms

  after_create do | user |
    room = Room.create(user: user, name: Settings.default_room)
    Member.create!(room: room ,website: Settings.site ,username: user.email,password:  Base64.encode64(Settings.default_pass),email: user.email,url:Settings.site_url)
  end

end
