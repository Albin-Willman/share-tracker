class Api::StocksController < Api::ApiController

  def index
    render json: {stocks: Stock.all}
  end

  def show
    @stock = Stock.find(params[:id])
    render json: {stock: @stock}, include: ['stock_data']
  end
end