# -*- coding: utf-8 -*- 
require 'spec_helper'

describe RoomsWidget do

  has_widgets do |root|
    root << widget(:rooms)
  end

  it 'renders properly' do
    render_widget(:rooms).should  have_content('')
  end
end

