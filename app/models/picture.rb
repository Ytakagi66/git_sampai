class Picture < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    has_many :shrine_images, dependent: :destroy
    has_many :shrines, through: :shrine_images
    
    validates :image, null: false
    validates :content, null: false
end
