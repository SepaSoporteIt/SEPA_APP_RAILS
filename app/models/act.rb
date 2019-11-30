class Act < ApplicationRecord
  belongs_to :entity, :foreign_key => 'entityId'
  belongs_to :company, :foreign_key => 'companyId'
  belongs_to :study, :foreign_key => 'studyId'
end
