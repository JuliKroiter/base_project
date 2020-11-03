class PagesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @page = Page.find_by(main: true)
    @pages = Page.all
  end
end
