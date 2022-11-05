require "rails_helper"

describe Friendship do
  it { should belong_to(:user) }
  it { should belong_to(:friend).class_name("User") }

  it { should define_enum_for(:status).with_values(pending: "pending", accepted: "accepted", rejected: "rejected").backed_by_column_of_type(:string) }
end
