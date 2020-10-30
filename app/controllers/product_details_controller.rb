class ProductDetailsController < ApplicationController
  def index
    render json: ProductDetail.all
  end

  def show
    render json: ProductDetail.find(params[:id])
  end
end
