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
    market_data = markets_service.single_market_query(id)[:data]
    market = Market.new(market_data[:attributes])
    market.id = market_data[:id]
    market
  end
end
