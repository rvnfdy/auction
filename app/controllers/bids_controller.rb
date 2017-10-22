# frozen_string_literal: true

class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end
end
