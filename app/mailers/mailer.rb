class Mailer < ActionMailer::Base
  default from: "site@mattbeedle.name"

  def new_contact_notification(contact)
    @contact = contact

    mail(
      to: 'mattbeedle@gmail.com',
      subject: "New message from #{contact.name} left on website"
    )
  end
end
