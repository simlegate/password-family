class UserCell < Cell::Rails

  def navbar args
    @current_user = args[:current_user]
    render
  end

end
