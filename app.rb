require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')

get('/') do
  erb(:contact_entry)
end

post('/') do
  first_name = params['first_name']
  last_name = params['last_name']
  phone_type = params['phone-type']
  phone = params['phone']
  street = params['street']
  city = params['city']
  state = params['state']
  zip = params['zip']
  @contact = Contact.new({:first_name=> first_name, :last_name=> last_name})
  @contact.save
  @phone = Phone.new({:phone_type=> phone_type, :phone => phone})
  @address = Address.new({:street=>street, :city=> city, :state=> state, :zip=> zip})
  @contact.addresses.push(@address)
  @phones.push(@phone)
  erb(:contact_entry)
end


# phone_type = params['phone_type']
# phone = params['phone']
# street = params['street']
# city = params['city']
# state = params['state']
# zip = params['zip']
