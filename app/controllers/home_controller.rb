class HomeController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @services = Service.where(active: true)
  end
end
