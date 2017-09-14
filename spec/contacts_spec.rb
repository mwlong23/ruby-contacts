require 'rspec'
require 'contacts'
require 'phone'
require 'address'


describe("Contact") do
  it 'stores a contacts first/last name and returns full name.' do
    contact = Contact.new({:first_name=> "Todd", :last_name=> "Smith" })
    expect(contact.full_name()).to(eq("Todd Smith"))
  end
  describe('#save') do
    it 'saves a contacts first and last name' do
     contact = Contact.new({:first_name=> "Todd", :last_name=> "Smith" })
     expect(contact.save).to(eq("Todd Smith"))
    end
  end
end

describe("Phone") do
  it 'stores a phone type andnumber and returns a string of phone type and number' do
    phone = Phone.new({:phone_type => "work", :phone => "555-555-5555"})
    expect(phone.phone_full()).to(eq('work: 555-555-5555'))
  end
end

describe('Address') do
  it 'Stores street, city, state and zip and prints them out in address format' do
    address = Address.new({:street => "123 15th Ave", :city => "Seattle", :state => "WA", :zip => "98105"})
    expect(address.full_address()).to(eq("123 15th Ave, Seattle, WA, 98105"))
  end
end

# describe('AddressBook') do
#   it 'is empty at first' do
#     addressbook = AddressBook.new()
#     addressbook.contacts
#     expect(addressbook.contacts).to(eq([]))
#   end
#   it 'stores multiple instances of a contact object and returns them in an array' do
#     todd = Contact.new({:first_name=> "Todd", :last_name=> "Smith" })
#     matt = Contact.new({:first_name=> "Matt", :last_name=> "Brown" })
#     address_book = AddressBook.new()
#     todd_full = todd.full_name
#     todd_contact_object = address_book.contacts.push(todd_full)
#     expect(todd_contact_object).to(eq(["Todd Smith"]))
#     matt_full = matt.full_name
#     matt_contact_object = address_book.contacts.push(matt_full)
#     expect(matt_contact_object).to(eq(["Todd Smith","Matt Brown"]))
#   end
# end
