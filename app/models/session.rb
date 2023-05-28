class Session < ApplicationRecord
  belongs_to :cinema
  belongs_to :movie
end
