class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def location
  end

  def standards
  end

  def contacts
  end

  def apartments
  end

  def references
  end

  def callback
    callback_form = CallbackForm.new(callback_params)

    if callback_form.valid?
      if ApplicationMailer.callback(callback_form.params).deliver_now
        redirect_to root_url, status: 301, notice: t('controller.callback_mail_send')
      else
        redirect_to root_url, status: 301, error: t('controller.callback_mail_send_error')
      end
    else
      redirect_to root_url, status: 301, alert: callback_form.errors.full_messages
    end
  end

  def callback_params
    params.permit(:name, :phone)
  end
end
