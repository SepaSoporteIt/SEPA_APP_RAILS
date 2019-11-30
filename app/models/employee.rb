class Employee < ApplicationRecord
	has_many :company
	has_many :visit
	has_many :ordene
  has_many :expiration, :foreign_key => 'employeeId'
  validates_presence_of  :name, :message => "Complete el Nombre" 
  validates_presence_of  :surname, :message => "Complete el Apellido" 
  validates_presence_of  :celular, :message => "Complete el Celular" 
  validates_presence_of  :email, :message => "Complete el Correo" 
	validates :cuit, format: { with: /\b(20|23|24|27|30|33|11|34)[+-]?[0-9]{8}(\D)?[0-9]/, message: "Por favor verifique que sean solo numeros y '-', por ejemplo 11-11111111-1" }, length: { is: 13, message: "Por favor ingrese solo 11 digitos, con sus guiones correspondientes en el CUIT, por ejemplo 11-11111111-1" }


def self.search(term)
  if term
  	where('name LIKE ? '\
    'OR surname LIKE ? '\
    'OR mat_number LIKE ?', "%#{term}%", "%#{term}%", "#{term}")
  else
  	all
  end
end

end
