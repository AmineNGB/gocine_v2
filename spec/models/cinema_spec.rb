require "rails_helper"

RSpec.describe Cinema, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:allocine_id) }
  it { should validate_uniqueness_of(:allocine_id).ignoring_case_sensitivity }
end
