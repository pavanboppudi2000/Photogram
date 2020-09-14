class Post < ApplicationRecord
    has_attached_file :image, styles: { large: "600x600>", medium: "200x200>", thumb: "100x100#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
