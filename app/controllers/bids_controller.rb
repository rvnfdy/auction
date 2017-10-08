class BidsController < ApplicationController
def index
		@bids = Bid.all
end
end
