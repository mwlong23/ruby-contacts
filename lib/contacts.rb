class Contact
  def initialize(attributes)
  @first_name = attributes.fetch(:first_name).to_s
  @last_name = attributes.fetch(:last_name).to_s
  end
  def first_name
    @first_name
  end
  def last_name
    @last_name
  end
  def full_name
    full_name = @first_name
    full_name += " "
    full_name += @last_name
  end
end

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

class AddressBook
    attr_reader :contacts
  
    def initialize
      @contacts = []
    end

end
