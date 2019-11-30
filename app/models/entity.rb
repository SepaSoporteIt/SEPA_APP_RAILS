class Entity < ApplicationRecord
	has_many :act, :foreign_key => 'entityId'
end
