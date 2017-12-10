require 'rails_helper'


RSpec.describe Contact, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'is valid with a firstname,lastname and email' do 
  	contact = Contact.new(
  		firstname:  'Aaron',
  		lastname:   'Summer',
  		emai:      'aaron@example.com')
  	expect(contact).to be_valid
  end

 it 'is invalid without a firstname' do 
 	expect(Contact.new(firstname:nil)).to have(1).errors_on(:firstname)
 end
 it 'is invalid without a firstname' do 
 	expect(Contact.new(firstname:nil)).to_not have(1).errors_on(:firstname)
 end
 
end
