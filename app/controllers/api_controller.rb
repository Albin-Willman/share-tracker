class ApiController < ApplicationController
  http_basic_authenticate_with name: ENV['SHARES_USERNAME'], password: ENV['SHARES_PASSWORD']

  def verify
    render json: { status: true }
  end

  def stocks
    @stocks = Stock.all
    render json: {stocks: @stocks}
  end

  def stock
    @stock = Stock.find(params[:id])
    render json: {stock: @stock}, include: ['stock_data']
  end
end
