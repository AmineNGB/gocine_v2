require 'rails_helper'

RSpec.describe "cinemas/show", type: :view do
  before(:each) do
    assign(:cinema, Cinema.create!(
      name: "Name",
      city: "City",
      allocine_id: "Allocine"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Allocine/)
  end
end
