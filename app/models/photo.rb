class Photo < ActiveRecord::Base
	has_attached_file :image,
                  preserve_files: "true",
                  	 styles: { med: ["300x300#", :jpg] }

validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
