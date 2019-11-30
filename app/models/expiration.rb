class Expiration < ApplicationRecord
	belongs_to :employee, :foreign_key => 'employeeId'
	belongs_to :study, :foreign_key => 'studyId'
	belongs_to :company, :foreign_key => 'companyId'

  validates_presence_of  :study, :message => "Seleccione un estudio" 
  validates_presence_of  :employee, :message => "Seleccione un profesional" 
  validates_presence_of  :company, :message => "Seleccione una compania" 
def self.search(term)
  if term
    where('companyId LIKE ? '\
    'OR employeeId LIKE ?'\
    'OR studyId LIKE ?'\
    'OR status LIKE?', "%#{term}%", "%#{term}%", "%#{term}%", "%#{term}%")
  else
    order('companyId ASC') 
  end
end

end
