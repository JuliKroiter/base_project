class Service < ApplicationRecord
  has_many :images, -> { order('-rang DESC') }, as: :parent
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

  rails_admin do
    field :name
    field :desc
    field :slug
    field :fa_icon
    field :fa_icon_color
    field :fa_icon_bg_color
    field :title
    field :content
    field :meta_title
    field :meta_desc
    field :active
    field :images
  end
end
