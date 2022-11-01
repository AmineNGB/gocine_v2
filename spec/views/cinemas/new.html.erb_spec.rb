require 'rails_helper'

RSpec.describe "cinemas/new", type: :view do
  before(:each) do
    assign(:cinema, Cinema.new(
      name: "MyString",
      city: "MyString",
      allocine_id: "MyString"
    ))
  end

  it "renders new cinema form" do
    render

    assert_select "form[action=?][method=?]", cinemas_path, "post" do

      assert_select "input[name=?]", "cinema[name]"

      assert_select "input[name=?]", "cinema[city]"

      assert_select "input[name=?]", "cinema[allocine_id]"
    end
  end
end
