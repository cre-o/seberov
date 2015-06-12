class CallbackForm
  include ActiveModel::Model
  include SharedValidations

  attr_accessor :name, :phone

  def params
    { name: name, phone: phone}
  end
end
