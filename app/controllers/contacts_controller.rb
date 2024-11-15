class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # Optional: send a notification email
      ContactMailer.contact_notification(@contact).deliver_now
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to contact_path, notice: "Message sent successfully. We will get back to you as soon as possible." }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("contact_form", partial: "contacts/form", locals: { contact: @contact }) }
        format.html { render :new, alert: "Failed to send message." }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
