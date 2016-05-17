require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :name => "Name",
        :description => "MyText",
        :session_id => "Session"
      ),
      Room.create!(
        :name => "Name",
        :description => "MyText",
        :session_id => "Session"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Session".to_s, :count => 2
  end
end
