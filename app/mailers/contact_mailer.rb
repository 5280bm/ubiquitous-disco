
class ContactMailer < ApplicationMailer
  def contact_notification(contact)
    @contact = contact
    mail(
      to: "admin@railscoder.com",
      subject: "Railscoder Inquiry",
      from: "admin@railscoder.com",
      reply_to: @contact.email,
      track_opens: "true"
      )
  end
end
