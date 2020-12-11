class ServicesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def show
    @service = Service.friendly.find(params[:id])
  end
end
