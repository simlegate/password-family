class UserCell < Cell::Rails

  def navbar args
    @current_user = args[:current_user]
    @room = args[:room]
    @member = args[:member]
    render 
  end
end
