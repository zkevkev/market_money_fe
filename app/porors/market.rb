class Market
  attr_accessor :vendors
  attr_reader :id,
              :name,
              :street,
              :city,
              :state,
              :zip

  def initialize(details, id)
    @id = id
    @name = details[:name]
    @street = details[:street]
    @city = details[:city]
    @state = details[:state]
    @zip = details[:zip]
    @vendors = []
  end
end
