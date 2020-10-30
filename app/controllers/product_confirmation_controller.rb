class ProductConfirmationController < ApplicationController
  def sale
    begin
      render json: @product if @product = ProductDetail.find(params[:id])
      raise unless @product
    rescue => e
      render json: "product unavailable"
    end
  end
end
