require 'rails_helper'

RSpec.describe MarketsService do
  before(:each) do
    @service = MarketsService.new
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

  describe '#market_query' do
    it 'returns a nested hash of markets data' do
      expect(@service.market_query).to be_a(Hash)
      expect(@service.market_query[:data]).to be_a(Array)

      results = @service.market_query[:data]
      
      expect(results[0]).to be_a(Hash)
      expect(results[0][:attributes]).to be_a(Hash)
      expect(results[0][:attributes][:name]).to be_a(String)
    end
  end
end
