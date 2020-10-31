class ProductsController < ApplicationController
  def show
    render json: Product.find(params[:id])
  end

  def index
    render json: Product.all.pluck(:id, :name)
  end
end
