class Api::StocksController < Api::ApiController

  def index
    render json: {stocks: Stock.all}
  end

  def show
    @stock = Stock.find(params[:id])
    render json: {stock: @stock}, include: ['stock_data']
  end

  def create
    @stock = StockBuilderClerk.new.call(params[:label], params[:url])
    if @stock.save
      render json: {stock: @stock}, include: ['stock_data']
    else
      render json: { stock: @stock, status: false, errors: @stock.errors }
    end
  end

  def destroy
    @stock = Stock.find(params[:id])
    if @stock.destroy
      render json: {status: true}
    else
      render json: { stock: @stock, status: false, errors: @stock.errors }
    end
  end
end