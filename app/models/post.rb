class Post < ApplicationRecord
    has_many :comments
    belongs_to :user

    mount_uploader :avatar, AvatarUploader
    paginates_per 3

    def self.search(search)
        where('blog_entry LIKE ? OR author LIKE ?', "%#{search}%", "%#{search}%")
    end
end
