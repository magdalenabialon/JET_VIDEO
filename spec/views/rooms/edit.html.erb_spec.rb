require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :name => "MyString",
      :description => "MyText",
      :session_id => "MyString"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_name[name=?]", "room[name]"

      assert_select "textarea#room_description[name=?]", "room[description]"

      assert_select "input#room_session_id[name=?]", "room[session_id]"
    end
  end
end
