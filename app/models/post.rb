class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, dependent: :delete_all
    validates :title, presence: true, length: {minimum: 5}
end
