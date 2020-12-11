class Employee < ApplicationRecord
  mount_uploader :image, ImageUploader
end
