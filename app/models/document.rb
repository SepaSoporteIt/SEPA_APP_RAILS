class Document < ApplicationRecord
	belongs_to :visit, :foreign_key => 'visitId'
	has_attached_file :images, default_url: "/images/:style/missing.png"
	do_not_validate_attachment_file_type :images
end
