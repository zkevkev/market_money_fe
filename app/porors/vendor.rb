class Vendor
  attr_accessor :id
  attr_reader :name, 
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted

  def initialize(details)
    @id = nil
    @name = details[:name]
    @description = details[:description]
    @contact_name = details[:contact_name]
    @contact_phone = details[:contact_phone]
    @credit_accepted = details[:credit_accepted]
  end
end
