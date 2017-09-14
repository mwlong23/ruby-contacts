
class Address
  def initialize(attributes)
    @street = attributes.fetch(:street).to_s
    @city = attributes.fetch(:city).to_s
    @state = attributes.fetch(:state).to_s
    @zip = attributes.fetch(:zip).to_s
  end
  def full_address
    full_address = @street
    full_address += ", "
    full_address += @city
    full_address += ", "
    full_address += @state
    full_address += ", "
    full_address += @zip
  end
end
