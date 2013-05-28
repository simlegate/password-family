# -*- coding: utf-8 -*- 
require 'spec_helper'

describe MembersWidget do
    has_widgets do |root|
      root << widget(:members)
    end

  it 'have no members' do
   render_widget(:members).should have_content("No Member!")
  end
end

