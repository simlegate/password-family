# -*- coding: utf-8 -*- 
require 'spec_helper'

describe MembersWidget do

  has_widgets do |root|
    root << widget(:members)
  end

  it "add new members" do
    # render_widget(:members,:new).should == "<h1>No Comment!</h1>"
  end

  it 'renders properly' do
    render_widget(:members).native.to_s.should include("<h1>No Member!</h1>")
  end

  it 'responds to :add events' do
    trigger(:add, :members, :text => "I like you!").first.should include("#members")
  end
end

