class Post < ApplicationRecord
    has_many :comments
    belongs_to :user

    mount_uploader :avatar, AvatarUploader
    paginates_per 3

    def self.search(search)
        where('blog_entry LIKE ? OR username LIKE ?', "%#{search}%", "%#{search}%")
    end
end
