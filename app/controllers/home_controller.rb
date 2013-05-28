class HomeController < ApplicationController
 include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:rooms)
  end

  has_widgets do |root|
    root << widget(:members)
  end

  def index   
  end
end
