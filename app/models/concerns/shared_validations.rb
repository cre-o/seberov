module SharedValidations
  extend ActiveSupport::Concern

  included do
    validates :name, presence: true, length: { in: 1..255 }
    validates :phone, presence: true #, format: { with: /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{3})/ }
  end
end
