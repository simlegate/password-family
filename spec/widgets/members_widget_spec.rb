# -*- coding: utf-8 -*- 
require 'spec_helper'

describe MembersWidget do

  has_widgets do |root|
    root << widget(:members)
  end

  it "add new members" do
    room = create :parlour
    atrs = attributes_for(:parlour_member,room_id: room.id)
    # trigger(:add, :members, :member => atrs).first.should include("#members")
  end

  it 'renders properly' do
    render_widget(:members).should have_content("No Member!")
  end
end

