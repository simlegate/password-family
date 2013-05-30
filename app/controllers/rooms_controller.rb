# -*- coding: utf-8 -*-
class RoomsController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:members, :room => @room)
  end

end
