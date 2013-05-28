class MembersWidget < Apotomo::Widget
  helper MemberHelper
  responds_to_event :add

  def display
    render
  end

  def add(evt)
    Member.create! evt[:member]
    update :state => :display
  end

  def new
    render
  end

end
