require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')



get('/') do
  @list = Contact.all
  erb(:contact_entry)
end

post('/') do
  first_name = params['first-name'].to_s
  last_name = params['last-name'].to_s
  phone_type = params['phone-type'].to_s
  phone = params['phone'].to_s
  street = params['street'].to_s
  city = params['city'].to_s
  state = params['state'].to_s
  zip = params['zip'].to_s

  contact = Contact.new(first_name, last_name)
  contact.save
  phone = Phone.new(phone_type, phone)
  address = Address.new(street, city, state, zip)
binding.pry
  @addresses.push(address)
  contact.addresses.push(@address)
  @phones.push(@phone)
  @list = Contact.all
  erb(:contact_entry)
end


# phone_type = params['phone_type']
# phone = params['phone']
# street = params['street']
# city = params['city']
# state = params['state']
# zip = params['zip']
