class MembersWidget < Apotomo::Widget
  helper MemberHelper
  responds_to_event :create
  responds_to_event :show
  responds_to_event :replace
  responds_to_event :destroy


  def display
    @room = Room.first
    render
  end

  def create(evt)
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

  def replace(evt)
    member = Member.find(evt[:id])
    member.update_attributes(evt[:member])
    @room = member.room
#   update "#member_tr_#{member.id}",:view => :display
    update '#members',:view => :display
  end

  def destroy(evt)
    member = Member.find(evt[:id])
    update '#members',:view => :display if member.destroy && (@room = member.room.reload)
  end
end
