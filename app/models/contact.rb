class Contact < MailForm::Base
  attribute :name
  attribute :email
  attribute :message
  attribute :date
  attribute :number
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "justjohnd@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
