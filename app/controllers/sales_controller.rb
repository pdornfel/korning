class SalesController < ApplicationController

  def index
    @sales = filter_sales(params)

    Sale.order(:id)
  end

  def show
    @sale = Sale.find(params[:id])
  end

end

  private

  def filter_sales(params)
    if params[:filter] == 'most-recent'
      Sale.most_recent(params[:count].to_i)
    else
      Sale.all
    end
  end