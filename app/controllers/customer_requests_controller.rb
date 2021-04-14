class CustomerRequestsController < ApplicationController
  # GET /pages
  # GET /pages.json
  def create
    @customer_request = CustomerRequest.create(customer_request_params)

    respond_to do |format|
      format.js
    end

  end

  private

  def customer_request_params
    params.require(:customer_request).permit(:name, :email, :phone, :message)
  end
end
