class Market
  attr_accessor :id, :vendors
  attr_reader :name, 
              :city,
              :state

  def initialize(details)
    @id = nil
    @name = details[:name]
    @city = details[:city]
    @state = details[:state]
    @vendors = []
  end
end
