class ContactsController < ApplicationController
  respond_to :js

  expose(:contact) { Contact.new contact_params }

  def create
    contact.save
    Mailer.new_contact_notification(contact).deliver
    respond_with contact
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
