class RoomsWidgetTest < Apotomo::TestCase
  has_widgets do |root|
    root << widget(:roomss)
  end

  def test_render
    render_widget :comments
    assert_select "li#me"

    trigger :post, :comment => {:text => "Sex on the beach"}
    assert_response 'alert("Hey, you wanted to submit a pervert comment!");'
  end
end
