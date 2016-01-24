class Photo < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "300x300", large: "200x200" }

	validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
