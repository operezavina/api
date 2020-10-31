class ProductDetailsController < ApplicationController
  def index
    render json: ProductOption.all
  end

  def show
    puts params
    render json: @product_detail if @product_detail = ProductDetail.where(product_id: params[:id])
    raise unless @product_detail
  rescue => e
    render json: :not_found
  end
end
