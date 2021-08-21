class Tweet < ApplicationRecord
  validates :text, presence: true
 

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end

