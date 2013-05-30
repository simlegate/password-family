require 'spec_helper'

describe RoomsWidget do
  has_widgets do |root|
    root << widget('rooms')
  end
  
  it "should render :create" do
    # render_widget(:rooms, :create,:room => attributes_for(:room)).should have_selector("h1")
  end
  
end
