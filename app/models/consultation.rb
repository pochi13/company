class Consultation < ApplicationRecord
belongs_to :user
belongs_to :company

with_options presence: true do
  validates :name
  validates :name
end
end
