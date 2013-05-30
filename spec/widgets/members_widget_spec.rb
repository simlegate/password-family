# -*- coding: utf-8 -*- 
require 'spec_helper'

describe MembersWidget do
    has_widgets do |root|
      root << widget('members') 
    end

  it 'have no members' do
    render_widget(:members).should have_content("新建站点")
  end

  it 'have one and more members' do
    room = create :room
    create :member,room_id: room.id
    render_widget(:members).should have_content("新建站点")
  end
end

