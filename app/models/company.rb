class Company < ApplicationRecord
  has_many :names
  has_many :consultations
  mount_uploader :profile_image, CompanyProfileImageUploader

  with_options presence: true do
  validates :name
  validates :introduce
 end
end
