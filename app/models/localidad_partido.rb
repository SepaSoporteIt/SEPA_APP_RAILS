class LocalidadPartido < ApplicationRecord
		has_many :company, :foreign_key => 'localidad_partidoId'
end
