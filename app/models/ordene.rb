class Ordene < ApplicationRecord
	belongs_to :company, :foreign_key => 'companyId'
	belongs_to :employee, :foreign_key => 'contacto_id'
	has_many :visit, :foreign_key => 'order_id'
	accepts_nested_attributes_for :visit, allow_destroy: true
end
