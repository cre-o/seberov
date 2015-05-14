class ApplicationMailer < ActionMailer::Base
  default from: Settings.emails.default_from
  layout 'mailer'

  def callback(params)
    @params = params
    mail(to: Settings.emails.callback_to, subject: 'CallBack request from Seberov website')
  end
end
