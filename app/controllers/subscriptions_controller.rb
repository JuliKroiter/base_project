class SubscriptionsController < ApplicationController
  # GET /pages
  # GET /pages.json
  def create
    @subscription = Subscription.create(subscription_params)

    respond_to do |format|
      format.js
    end

  end

  private

  def subscription_params
    params.require(:subscription).permit(:mail)
  end
end
