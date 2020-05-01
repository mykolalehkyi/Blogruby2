class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :taggings
    has_many :tags, through: :taggings
    has_many :comments, dependent: :delete_all
    validates :title, presence: true, length: {minimum: 5}

    def all_tags
        self.tags.map(&:name).join(', ')
    end

    def all_tags=(names)
        self.tags = names.split(',').map do |name|
            Tag.where(name: name.strip).first_or_create!
        end
    end
end
