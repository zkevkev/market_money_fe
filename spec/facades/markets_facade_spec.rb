require 'rails_helper'

RSpec.describe MarketsFacade, type: :facade do
  before(:each) do
    @facade = MarketsFacade.new  
  end

  it '#list_markets' do
    expect(@facade.list_markets).to be_a(Array)

    @facade.list_markets.each do |market|
      expect(market).to be_a(Market)
      expect(market).to respond_to(:name)
      expect(market).to respond_to(:city)
      expect(market).to respond_to(:state)
    end
  end
end
