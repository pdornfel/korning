class SalesController < ApplicationController

  def index
    @sales = Sale.order(:id)
  end

  def show
    @sale = Sale.find(params[:id])
  end

end