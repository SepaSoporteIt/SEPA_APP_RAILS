class Visit < ApplicationRecord
	belongs_to :company, :foreign_key => 'companyId'
  belongs_to :ordene, :foreign_key => 'order_id'
	belongs_to :employee, :foreign_key => 'employeeId'
	belongs_to :visitType, :foreign_key => 'visitTypeId'
	belongs_to :frecuency, :foreign_key => 'frecuencyTypeId'
  belongs_to :ordene, :foreign_key => 'order_id'
	has_many :document, :foreign_key => 'visitId'
  has_many :visit_comment, :foreign_key => 'visit_id'
  validates_presence_of  :company, :message => "Seleccione un Cliente de la lista" 
  validates_presence_of  :employee, :message => "Seleccione un Responsable de la lista"
  validates_presence_of  :visitType, :message => "Seleccione un Tipo de Visita de la lista" 
  validates_presence_of  :frecuency, :message => "Seleccione una Frecuencia de la lista" 

	def to_s
    	"visitTypeId:#{self.visitTypeId} frecuencyTypeId:#{self.frecuencyTypeId} employeeId: #{self.employeeId} "
  	end
  	accepts_nested_attributes_for :document, allow_destroy: true

  	def self.send_emails
      @visits = Visit.where("visitDate <= ? AND sent = ?", Date.today + 30.day, false)
      @visits.each do |visit|
      @visit = visit
      mail(to: @visit.company.email, subject: 'Sample Email')
      ApplicationMailer.send_visit_notification(@user).deliver 
      @visit.sent= true
      @visit.save
    end
  end
end
