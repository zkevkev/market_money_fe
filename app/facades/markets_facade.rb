class MarketsFacade
  def list_markets
    markets_service = MarketsService.new
    parsed = markets_service.market_query[:data]
    parsed.map do |market_data|
      market = Market.new(market_data[:attributes])
      market.id = market_data[:id]
      market
    end
  end

  def find_market(id)
    markets_service = MarketsService.new
    vendors_facade = VendorsFacade.new
    market_data = markets_service.single_market_query(id)[:data]
    market = Market.new(market_data[:attributes])
    market.id = market_data[:id]
    vendors_info = market_data[:relationships][:vendors][:data]
    vendors_info.each do |vendor_info|
      vendor = vendors_facade.find_vendor(vendor_info[:id])
      market.vendors << vendor
    end
    market
  end
end
