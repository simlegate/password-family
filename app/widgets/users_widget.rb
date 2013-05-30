class UsersWidget < Apotomo::Widget
  include Devise::Controllers::Helpers
  helper_method :current_user
  helper_method :sign_in


  responds_to_event :replace


  def display
    render
  end

  def form
    render
  end

  def replace(evt)
    user = User.find(evt[:id])
    if user.update_with_password(evt[:user])
      # do not logging out after password updated
      sign_in(user, :bypass => true)
    else
      update "#user_validate_#{current_user.id}",:text => user.errors.first[1]
    end
  end

end
