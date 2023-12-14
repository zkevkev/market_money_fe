class MarketsController < ApplicationController
  def index
    market_facade = MarketsFacade.new
    @markets = market_facade.list_markets
  end

  def show
    market_facade = MarketsFacade.new
    @market = market_facade.find_market()
  end
end
