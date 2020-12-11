class Portfolio < ApplicationRecord
  belongs_to :portfolio_category
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
end
