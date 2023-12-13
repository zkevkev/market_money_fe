class MarketsController < ApplicationController
  def index
    market_facade = MarketsFacade.new
    @markets = market_facade.list_markets
  end
end
