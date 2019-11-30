class Comment < ApplicationRecord
	belongs_to :company, :foreign_key => 'companyId'
	def self.search(term)
  if term
    where('companyId LIKE ? '\
    'OR employeeId LIKE ?'\
    'OR studyId LIKE ?'\
    'OR status LIKE?', "%#{term}%", "%#{term}%", "%#{term}%", "%#{term}%")
  else
    order('created_at DESC') 
  end
end
end
