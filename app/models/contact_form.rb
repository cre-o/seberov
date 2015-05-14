class ContactForm < MailForm::Base
  attribute :name,      validate: true
  attribute :phone,     validate: /\d{3}-\d{3}-\d{4}/

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
        :subject => 'Seberov contact form',
        :to => 'prodej@statekseberov.cz', # email
        :from => %("#{name}" <#{phone}>),
        :message => "Client '#{name}' wants to callback on phone number #{phone}"
    }
  end
end
