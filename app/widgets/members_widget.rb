class MembersWidget < Apotomo::Widget
  helper MemberHelper
  responds_to_event :add
  responds_to_event :show

  def display
    @room = Room.first
    render
  end

  def add(evt)
    p evt
    @room = Member.create!(evt[:member]).room
    update '#members',:view => :display
  end

  def form arg
    render :locals => {member: arg[:member]}
  end

  def show(evt)
    @room = Room.find(evt[:room_id])
    update '#members',:view => :display
  end

end
