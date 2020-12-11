class Client < ApplicationRecord
  mount_uploader :image, ImageUploader
end
