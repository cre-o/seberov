class CallbackForm
  include ActiveModel::Model

  attr_accessor :name, :phone

  validates :name, presence: true, length: { in: 1..255 }
  validates :phone, presence: true,
    format: { with: /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{3})/ }, length: { minimum: 9 }

  def params
    { name: name, phone: phone}
  end
end
