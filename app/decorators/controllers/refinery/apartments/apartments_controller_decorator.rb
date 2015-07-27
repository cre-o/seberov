Refinery::Apartments::ApartmentsController.class_eval do
  before_action :decorate_apartments, only: [:by_parameters]

  def application
    application_form = ApplicationForm.new(application_params)

    if application_form.valid?
      if ApplicationMailer.application(application_form.params).deliver_now
        render nothing: true, status: :created
      else
        render nothing: true, status: :unprocessable_entity
      end
    else
      render json: { errors: application_form.errors.full_messages }, status: :bad_request
    end
  end

  def mortgage
    mortgage_form = MortgageForm.new(mortgage_params)

    if mortgage_form.valid?
      if ApplicationMailer.mortgage(mortgage_form.params).deliver_now
        render nothing: true, status: :created
      else
        render nothing: true, status: :unprocessable_entity
      end
    else
      render json: { errors: mortgage_form.errors.full_messages }, status: :bad_request
    end
  end

  private

    def application_params
      params.permit(:name, :phone, :email, :unit_id)
    end

    alias_method :mortgage_params, :application_params

    def decorate_apartments
      @apartments = Refinery::Apartments::ApartmentsDecorator.decorate(@apartments)
    end
end
