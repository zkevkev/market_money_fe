class MarketsFacade
  def list_markets
    markets_service = MarketsService.new
    parsed = markets_service.market_query[:data]
    parsed.map do |market|
      Market.new(market)
    end
  end
end
