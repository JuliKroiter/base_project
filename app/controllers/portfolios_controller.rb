class PortfoliosController < ApplicationController
  # GET /pages
  # GET /pages.json
  def show
    @portfolio = Portfolio.friendly.find(params[:id])
  end
end
