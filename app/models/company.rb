class Company < ApplicationRecord
  mount_uploader :profile_image, CompanyProfileImageUploader
  validates :name, presence: true
  validates :introduce, presence: true


end
