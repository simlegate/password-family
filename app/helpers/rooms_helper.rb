#encoding: utf-8
module RoomsHelper

  def form_title room
    room.new_record? ? '新建房间' : '编辑房间'
  end

  def form_url room
    room.new_record? ? url_for_event(:create) : url_for_event(:replace,:id=>room.id)
  end

end
