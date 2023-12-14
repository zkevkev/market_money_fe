require 'rails_helper'

RSpec.describe Market do
  before(:each) do
    market_details = {
      name: "14&U Farmers' Market",
      street: '1400 U Street NW',
      city: 'District of Columbia',
      state: 'Washington',
      zip: '20009'
    }
    @market = Market.new(market_details, '1')
  end

  it 'has attributes' do
    expect(@market.id).to eq('1')
    expect(@market.name).to eq("14&U Farmers' Market")
    expect(@market.street).to eq('1400 U Street NW')
    expect(@market.city).to eq('District of Columbia')
    expect(@market.state).to eq('Washington')
    expect(@market.zip).to eq('20009')
    expect(@market.vendors).to eq([])
  end
end
