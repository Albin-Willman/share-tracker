class ApiController < ApplicationController
  http_basic_authenticate_with name: ENV['SHARES_USERNAME'], password: ENV['SHARES_PASSWORD']

  def verify
    render json: { status: true }
  end

  def stocks
    @stocks = Stock.all
    render :template => "stocks/index.json"
  end

  def stock
    @stock = Stock.find(params[:id])
    render :template => "stocks/show.json"
  end
end
