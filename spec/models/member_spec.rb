# -*- coding: utf-8 -*-

require 'spec_helper'

describe 'member' do
  
  before :all do 
    @room    = create :parlour
    @members = create :parlour_members
  end
  it "每一个被保存的密码成员应该属于一个房间room" do
    @member.room.should_not nil
  end
end

