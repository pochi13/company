class AddProfileImageToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :profile_image, :string
  end
end
