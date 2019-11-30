class IndustryType < ApplicationRecord
	has_many :company, :foreign_key => 'industryTypeId'
end