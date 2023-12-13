class Market
  attr_reader :name, 
              :city,
              :state

  def initialize(details)
    @name = details[:name]
    @city = details[:city]
    @state = details[:state]
  end
end
