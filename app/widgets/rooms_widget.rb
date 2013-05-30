class RoomsWidget < Apotomo::Widget
 helper RoomsHelper
 responds_to_event :create
 responds_to_event :replace
 responds_to_event :destroy

 def display
    @rooms = Room.all
    render 
  end

 def create(evt)
    @room = Room.create! evt[:room]
    update :state => :display
 end

 def form arg
   @room = arg[:room]
   render 
 end

 def replace(evt)
    @room = Room.find(evt[:id])
    if @room.update_attributes(evt[:room])
      update :state => :display
    else
      update "#room_validate_#{@room.id}",:text => @room.errors.first[1]
    end
 end

 def destroy(evt)
   room = Room.find(evt[:id])
   update :state => :display if room.destroy 
 end

end
