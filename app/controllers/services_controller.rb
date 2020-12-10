class ServicesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def show
    @service = Service.find_by(slug: params[:slug])
  end
end
