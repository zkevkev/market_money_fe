require 'rails_helper'

RSpec.describe Market do
  before(:each) do
    market_details = {
      name: "14&U Farmers' Market",
      city: 'District of Columbia',
      state: 'Washington'
    }
    @market = Market.new(market_details, '1')
  end

  it 'has attributes' do
    expect(@market.id).to eq('1')
    expect(@market.name).to eq("14&U Farmers' Market")
    expect(@market.city).to eq('District of Columbia')
    expect(@market.state).to eq('Washington')
  end
end
