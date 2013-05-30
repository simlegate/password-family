class HomeController < ApplicationController
 include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:rooms)
    root << widget(:members)
    root << widget(:users)
  end

  def index   
    redirect_to root_path unless user_signed_in?
  end
end
