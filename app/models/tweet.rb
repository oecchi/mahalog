class Tweet < ApplicationRecord

  validates :body, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
