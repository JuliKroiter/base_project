class HomeController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @services = Service.where(active: true)
    @portfolio_categories = PortfolioCategory.joins(:portfolios)
    @portfolios = Portfolio.where(active: true)
  end
end
