require 'rails_helper'

RSpec.describe "cinemas/index", type: :view do
  before(:each) do
    assign(:cinemas, [
      Cinema.create!(
        name: "Name",
        city: "City",
        allocine_id: "123456789"
      ),
      Cinema.create!(
        name: "Name",
        city: "City",
        allocine_id: "1234567890"
      )
    ])
  end

  it "renders a list of cinemas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Allocine".to_s), count: 2
  end
end
