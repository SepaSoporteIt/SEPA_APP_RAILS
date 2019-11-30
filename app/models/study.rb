class Study < ApplicationRecord
	has_many :expiration, :foreign_key => 'studyId'
	has_many :act, :foreign_key => 'studyId'
end
