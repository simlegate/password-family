# -*- coding: utf-8 -*- 
require 'spec_helper'

describe RoomsWidget do

  has_widgets do |root|
    root << widget(:rooms)
  end

  it 'renders properly' do
    render_widget(:rooms).native.to_s.should include('<div id="rooms">')
  end

  it 'responds to :add events' do
    trigger(:add, :rooms, :room => {:name => "like you!"}).first.should include("like you!")
  end
end

