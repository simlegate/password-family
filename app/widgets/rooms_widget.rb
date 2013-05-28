class RoomsWidget < Apotomo::Widget
 responds_to_event :add

 def display
    @rooms = Room.all
    render 
  end

 def add(evt)
    @room = Room.create! evt[:room]
    update :state => :display
 end

 def new
   render
 end
end
