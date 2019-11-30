class VisitSoonNotificationMailer < ApplicationMailer
  default from: "jjmblanco23@gmail.com"

  def sample_email(visit)
    @visit = visit
    mail(to: @visit.company.email, subject: 'Sample Email')
  end

  def new_session(visit)
    @visit = visit
    mail to: @visit.company.email, subject: "Test!"
  end
end
