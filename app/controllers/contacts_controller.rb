class ContactsController < ApplicationController

def new
  @contact = Contact.new
end

def create
  @contact = Contact.new(contacts_params)
  @contact.request = request
  if @contact.deliver
    flash.now[:success] = 'Message sent!'
  else
    flash.now[:error] = 'Could not send message'
    render :new
  end
end

  private
  def contacts_params
    params.require(:contact).permit(:name, :email, :date, :number, :message)
  end

end
