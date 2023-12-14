class VendorsController < ApplicationController
  def show
    vendors_facade = VendorsFacade.new
    @vendor = vendors_facade.find_vendor(params[:id])
  end
end
