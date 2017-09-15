
class Phone
  attr_accessor :phone_type, :phone
  def initialize(phone_type, phone)
    @phone_type = phone_type
    @phone = phone
  end
  def phone_full
    phone_type = @phone_type
    phone_type += ": "
    phone_type += @phone
  end
end
