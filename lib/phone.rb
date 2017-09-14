require('./lib/**/*.rb')


class Phone
  def initialize(attributes)
    @phone_type = attributes.fetch(:phone_type).to_s
    @phone = attributes.fetch(:phone).to_s
  end
  def phone_full
    phone_type = @phone_type
    phone_type += ": "
    phone_type += @phone
  end
end
