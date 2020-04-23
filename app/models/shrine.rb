class Shrine < ApplicationRecord
    mount_uploader :image, ImageUploader
end
