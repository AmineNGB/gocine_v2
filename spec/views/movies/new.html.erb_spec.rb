require "rails_helper"

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      photo_url: "MyString",
      title: "MyString",
      synopsis: "MyText",
      duration: "MyString",
      rate_press: 1.5,
      rate_viewer: 1.5,
      allocine_id: "MyString",  
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input[name=?]", "movie[photo_url]"

      assert_select "input[name=?]", "movie[title]"

      assert_select "textarea[name=?]", "movie[synopsis]"

      assert_select "input[name=?]", "movie[duration]"

      assert_select "input[name=?]", "movie[rate_press]"

      assert_select "input[name=?]", "movie[rate_viewer]"

      assert_select "input[name=?]", "movie[allocine_id]"
    end
  end
end
