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
end
