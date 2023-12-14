class Vendor
  attr_accessor :id
  attr_reader :name

  def initialize(details)
    @id = nil
    @name = details[:name]
  end
end
