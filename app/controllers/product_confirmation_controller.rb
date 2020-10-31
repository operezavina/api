class ProductConfirmationController < ApplicationController
  def sale
    begin
      render json: :product_sale if @product = ProductDetail.find(params[:id])
      raise unless @product
    rescue => e
      render json: :not_found
    end
  end
end
