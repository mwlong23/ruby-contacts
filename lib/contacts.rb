
class Contact
  attr_accessor :first_name, :last_name
  attr_reader :id
  @@contacts = []
  def initialize(first_name, last_name)
  @first_name = first_name
  @last_name = last_name
  @addresses = []
  @phones = []
  @id = @@contacts.length + 1
  end
  def self.all()
    @@contacts
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
  def self.clear()
    @@contacts = []
  end
end
