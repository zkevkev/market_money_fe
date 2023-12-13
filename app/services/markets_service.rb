class MarketsService
  def conn
    conn = Faraday.new(url: 'http://localhost:5000/')
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def market_query
    get_url('/api/v0/markets')
  end
end
