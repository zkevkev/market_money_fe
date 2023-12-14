class VendorsFacade
  def find_vendor(id)
    vendors_service = VendorsService.new
    vendor_data = vendors_service.single_vendor_query(id)[:data]
    vendor = Vendor.new(vendor_data[:attributes])
    vendor.id = vendor_data[:id]
    vendor
  end
end
