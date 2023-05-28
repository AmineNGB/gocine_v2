require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    assign(:movie, Movie.create!(
      photo_url: "Photo Url",
      title: "Title",
      synopsis: "MyText",
      duration: "Duration",
      rate_press: 2.5,
      rate_viewer: 3.5,
      allocine_id: "Allocine"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Photo Url/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Allocine/)
  end
end
