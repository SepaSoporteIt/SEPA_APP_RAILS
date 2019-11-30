class Company < ApplicationRecord
	belongs_to :employee, :foreign_key => 'employeeId'
	belongs_to :localidad_partido, :foreign_key => 'localidad'
	belongs_to :industryType, :foreign_key => 'industryTypeId'
	belongs_to :industryType2, :foreign_key => 'industryTypeId2'
	belongs_to :frecuency, :foreign_key => 'frecuencyTypeId'
	belongs_to :expiration, :foreign_key => 'expirationId'
	has_many :visit, :foreign_key => 'companyId'
	has_many :ordene, :foreign_key => 'companyId'
	has_many :comment, :foreign_key => 'companyId'
	has_many :expiration, :foreign_key => 'companyId'
	has_many :act, :foreign_key => 'companyId'
	accepts_nested_attributes_for :visit, allow_destroy: true

	validates_presence_of  :employee, :message => "Seleccione un Profesional Asigando" 
	validates_presence_of  :industryTypeId, :message => "Seleccione un Rubro / Actividad primario" 
	validates :cuit, format: { with: /\b(20|23|24|27|30|33|11|34)[-]?[0-9]{8}[-]?[0-9]/, message: "Por favor ingrese solo Numeros  para el CUIT" }, length: { is: 13 , message: "Por favor ingrese solo 13 caracteres en CUIT" }
	validates_presence_of  :localidad, :message => "Seleccione una localidad" 

def self.search(term)
  if term
    where('name LIKE ? '\
    'OR localidad LIKE ?'\
    'OR fantasy_name LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%")
  else
    order('name ASC') 
  end
end

end
