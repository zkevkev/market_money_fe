class Market
  attr_accessor :id, :vendors
  attr_reader :name,
              :street,
              :city,
              :state,
              :zip

  def initialize(details)
    @id = nil
    @name = details[:name]
    @street = details[:street]
    @city = details[:city]
    @state = details[:state]
    @zip = details[:zip]
    @vendors = []
  end
end
