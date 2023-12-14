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

      markets = @service.market_query[:data]

      markets.each do |market|
        expect(market).to have_key(:id)
        expect(market[:attributes]).to have_key(:name)
        expect(market[:attributes]).to have_key(:city)
        expect(market[:attributes]).to have_key(:state)
      end
    end
  end

  describe '#single_market_query' do
    it 'returns a nested hash of market data' do
      expect(@service.single_market_query(322458)).to be_a(Hash)

      market = @service.single_market_query(322458)[:data]

      expect(market).to have_key(:id)
      expect(market[:id]).to be_a(String)

      expect(market[:attributes]).to have_key(:name)
      expect(market[:attributes][:name]).to be_a(String)

      expect(market[:attributes]).to have_key(:city)
      expect(market[:attributes][:city]).to be_a(String)

      expect(market[:attributes]).to have_key(:state)
      expect(market[:attributes][:state]).to be_a(String)
    end
  end
end
