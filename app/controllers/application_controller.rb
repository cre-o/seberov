class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

  before_action :set_locale
  before_action :check_locale

  # POST /callback
  def callback
    callback_form = CallbackForm.new(callback_params)

    if callback_form.valid?
      if ApplicationMailer.callback(callback_form.params).deliver_now
        redirect_to root_url(locale: I18n.locale), status: 301
        # Sets up modal window
        flash[:callback_sent] = true
      else
        redirect_to root_url(locale: I18n.locale), status: 301, error: t('controller.callback_mail_send_error')
      end
    else
      redirect_to root_url(locale: I18n.locale), status: 301, alert: callback_form.errors.full_messages
    end
  end

  def check_locale
    match = /^(ru|en|cs)/.match(request.env['HTTP_ACCEPT_LANGUAGE'])

    if request.env['REQUEST_METHOD'] == 'GET' && match && !params[:locale] && cookies[:active_lang] != 'en'
      redirect_to "/#{match[0]}/#{request.env["REQUEST_PATH"]}".gsub('//', '/')
      return false
    end
  end

  protected

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
      # Set up cookies
      cookies[:active_lang] = I18n.locale
      # Passing to client side
      gon.push :locale => I18n.locale
    end

    def default_url_options(options = {})
      { locale: I18n.locale }.merge options
    end

  private

    def callback_params
      params.permit(:name, :phone)
    end
end
