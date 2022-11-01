class Cinema < ApplicationRecord

  validates :name, presence: true
  validates :city, presence: true
  validates :allocine_id, presence: true, uniqueness: true
end
