class VendorsService
  # move to module
  def conn
    conn = Faraday.new(url: 'http://localhost:3000/')
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def single_vendor_query(id)
    get_url("api/v0/vendors/#{id}")
  end
end
