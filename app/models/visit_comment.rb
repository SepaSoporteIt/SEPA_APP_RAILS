class VisitComment < ApplicationRecord
	belongs_to :visit, :foreign_key => 'visit_id'
end
