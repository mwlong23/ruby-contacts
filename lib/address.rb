
class Address
  attr_accessor :street, :city, :state, :zip
  def initialize(street, city, state,zip)
    @street = street
    @city = city
    @state = state
    @zip = zip
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
