class Image < ApplicationRecord
  belongs_to :user
# What we're saying here is we are using carrierwave
# to associate that image with this model Picture that we have
  mount_uploader :picture, PictureUploader

  def picture_size 
    if picture.size > 5.megabyte 
      errors.add(:picture, "Should be less than 5 MB")
    end
  end
end
