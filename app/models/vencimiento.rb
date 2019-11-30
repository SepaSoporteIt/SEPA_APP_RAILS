class Vencimiento < ApplicationRecord
  belongs_to :company
  belongs_to :employee
  belongs_to :study
end
