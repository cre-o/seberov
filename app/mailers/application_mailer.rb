class ApplicationMailer < ActionMailer::Base
  default from: Settings.emails.default_from
  layout 'mailer'

  def callback(params)
    @params = params
    mail to: Settings.emails.callback_to, subject: I18n::t('mailers.callback_subject')
  end

  def application(params)
    @params = params
    mail to: Settings.emails.callback_to, subject: I18n::t('mailers.application_subject')
  end

  def mortgage(params)
    @params = params
    mail to: Settings.emails.callback_to, subject: I18n::t('mailers.mortgage_subject')
  end
end
