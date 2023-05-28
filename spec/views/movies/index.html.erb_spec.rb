require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        photo_url: "Photo Url",
        title: "Title",
        synopsis: "MyText",
        duration: "Duration",
        rate_press: 2.5,
        rate_viewer: 3.5,
        allocine_id: "Allocine"
      ),
      Movie.create!(
        photo_url: "Photo Url",
        title: "Title",
        synopsis: "MyText",
        duration: "Duration",
        rate_press: 2.5,
        rate_viewer: 3.5,
        allocine_id: "Allocine"
      )
    ])
  end

  it "renders a list of movies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Photo Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Duration".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Allocine".to_s), count: 2
  end
end
