class ApplicationController < ActionController::Base
  before_action :set_layout_variables

  def set_layout_variables
    @customer_request = CustomerRequest.new
  end
end
