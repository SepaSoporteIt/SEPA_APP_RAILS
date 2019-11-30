class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_visit_notification(visit)
	@visit = visit
    mail(to: @visit.company.email, subject: 'Sample Email')
  end
end
