require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  let(:movie) {
    Movie.create!(
      photo_url: "MyString",
      title: "MyString",
      synopsis: "MyText",
      duration: "MyString",
      rate_press: 1.5,
      rate_viewer: 1.5,
      allocine_id: "MyString"
    )
  }

  before(:each) do
    assign(:movie, movie)
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(movie), "post" do

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
