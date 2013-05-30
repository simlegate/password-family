# -*- coding: utf-8 -*-

require 'spec_helper'

describe Member do
  
  before :each do 
    @room    = build(:room)
    @member = build(:member)
  end

  context '一个密码成员应该属于一个room' do
    it "没有选择room将不会创建成功" do
      expect { @member.save! }.to raise_error
    end

    it "选择room将创建成功" do
      @member.room = @room
      expect { @member.save! }.not_to raise_error
    end
  end
end

