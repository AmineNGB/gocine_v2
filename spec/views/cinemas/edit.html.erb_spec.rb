require 'rails_helper'

RSpec.describe "cinemas/edit", type: :view do
  let(:cinema) {
    Cinema.create!(
      name: "MyString",
      city: "MyString",
      allocine_id: "MyString"
    )
  }

  before(:each) do
    assign(:cinema, cinema)
  end

  it "renders the edit cinema form" do
    render

    assert_select "form[action=?][method=?]", cinema_path(cinema), "post" do

      assert_select "input[name=?]", "cinema[name]"

      assert_select "input[name=?]", "cinema[city]"

      assert_select "input[name=?]", "cinema[allocine_id]"
    end
  end
end
