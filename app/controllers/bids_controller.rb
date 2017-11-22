# frozen_string_literal: true

class BidsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @bid = Bid.new
  end

  def create
    bid = Bid.new(bid_params)
    bid.user = current_user
    bid.product_id = params[:product_id]
    if bid.save
      redirect_to products_path
    else
      @product = Product.find(params[:product_id])
      render :new
    end
  end

  def destroy
    Bid.find(params[:id]).destroy
    redirect_to products_path
  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    bid = Bid.find(params[:id])

    if bid.update(bid_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  private def bid_params
    params.require(:bid).permit(:price)
  end

end
