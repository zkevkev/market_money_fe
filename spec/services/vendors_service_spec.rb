require 'rails_helper'

RSpec.describe VendorsService do
  before(:each) do
    @service = VendorsService.new
  end

  describe '#conn' do
    it 'establishes a connection with internal API' do
      expect(@service.conn).to be_a(Faraday::Connection)
    end
  end

  describe '#get_url' do
    it 'returns a nested hash response for a valid API endpoint' do
      expect(@service.get_url('api/v0/markets')).to be_a(Hash)
      expect(@service.get_url('api/v0/markets')[:data]).to be_a(Array)
      expect(@service.get_url('api/v0/markets')[:data][0]).to be_a(Hash)
    end
  end

  describe '#single_vendor_query' do
    it 'returns a nested hash of vendor data' do
      expect(@service.single_vendor_query(55823)).to be_a(Hash)

      vendor = @service.single_vendor_query(55823)[:data]

      expect(vendor).to have_key(:id)
      expect(vendor[:id]).to be_a(String)

      expect(vendor[:attributes]).to have_key(:name)
      expect(vendor[:attributes][:name]).to be_a(String)

      expect(vendor[:attributes]).to have_key(:description)
      expect(vendor[:attributes][:description]).to be_a(String)

      expect(vendor[:attributes]).to have_key(:contact_name)
      expect(vendor[:attributes][:contact_name]).to be_a(String)

      expect(vendor[:attributes]).to have_key(:contact_phone)
      expect(vendor[:attributes][:contact_phone]).to be_a(String)

      expect(vendor[:attributes]).to have_key(:credit_accepted)
      expect(vendor[:attributes][:credit_accepted]).to be_a(TrueClass).or be_a(FalseClass)
    end
  end
end
