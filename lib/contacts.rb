
class Contact
  @@contacts = []
  def initialize(attributes)
  @first_name = attributes.fetch(:first_name).to_s
  @last_name = attributes.fetch(:last_name).to_s
  @addresses = []
  @phones = []
  @id =
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
  def save()
    @@contacts.push(self)
  end
end
