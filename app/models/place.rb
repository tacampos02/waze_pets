class Place < ApplicationRecord
  has_many :comments
  mount_uploader :avatar, AvatarUploader
end
