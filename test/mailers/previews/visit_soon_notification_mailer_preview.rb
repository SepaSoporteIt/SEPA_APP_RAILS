# Preview all emails at http://localhost:3000/rails/mailers/visit_soon_notification_mailer
class VisitSoonNotificationMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    VisitSoonNotificationMailer.sample_email(Visit.first)
  end
end
