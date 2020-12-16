class Service < ApplicationRecord
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
end