require 'rails_helper'

RSpec.describe VendorsFacade, type: :facade do
  before(:each) do
    @facade = VendorsFacade.new  
  end

  it '#find_vendor' do
    vendor = @facade.find_vendor(55823)

    expect(vendor).to be_a(Vendor)
    expect(vendor).to respond_to(:id)
    expect(vendor).to respond_to(:name)
    expect(vendor).to respond_to(:description)
    expect(vendor).to respond_to(:contact_name)
    expect(vendor).to respond_to(:contact_phone)
    expect(vendor).to respond_to(:credit_accepted)
  end
end
