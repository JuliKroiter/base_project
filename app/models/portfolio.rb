class Portfolio < ApplicationRecord
  belongs_to :portfolio_category
  mount_uploader :image, ImageUploader
  has_many :images, -> { order('-rang DESC') }, as: :parent

  extend FriendlyId
  friendly_id :name, use: :slugged

  rails_admin do
    field :name
    field :description
    field :content
    field :slug
    field :active
    field :image
    field :images
    field :portfolio_category
    field :meta_title
    field :meta_desc
  end
end
