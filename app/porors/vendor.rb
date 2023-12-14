class Vendor
  attr_reader :id,
              :name, 
              :description,
              :contact_name,
              :contact_phone,
              :credit_accepted

  def initialize(details, id)
    @id = id
    @name = details[:name]
    @description = details[:description]
    @contact_name = details[:contact_name]
    @contact_phone = details[:contact_phone]
    @credit_accepted = details[:credit_accepted]
  end
end
