class MembersWidget < Apotomo::Widget

  include Devise::Controllers::Helpers
  helper_method :current_user
  helper MemberHelper

  responds_to_event :create
  responds_to_event :show
  responds_to_event :replace
  responds_to_event :destroy


  def display
    @room = current_user.rooms.default
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
    if member.update_attributes(evt[:member])
      return update '#members',:view => :display
    else
      # update "#member_validate_#{member.id}",:text => member.errors.first[1]
      update ".message", :view => 'error_message', locals: {:message => member.errors.first[1]}
    end
  end

  def destroy(evt)
    member = Member.find(evt[:id])
    update '#members',:view => :display if member.destroy && (@room = member.room.reload)
  end
end
