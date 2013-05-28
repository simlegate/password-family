# -*- coding: utf-8 -*-
class RoomsController < ApplicationController
  include Apotomo::Rails::ControllerMethods

  has_widgets do |root|
    root << widget(:members, :room => @room)
  end

  def index
  end

  def create
    room = Room.new params[:room]
    room.save! ? flash[:error]="出错！重建" : flash[:success]="成功！"
    redirect_to :back
  end
end
