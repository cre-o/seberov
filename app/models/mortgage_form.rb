class MortgageForm
  include ActiveModel::Model
  include SharedValidations

  attr_accessor :name, :phone, :email, :unit_id
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :unit_id, presence: true

  def params
    { name: name, phone: phone, email: email, unit_id: unit_id }
  end
end
