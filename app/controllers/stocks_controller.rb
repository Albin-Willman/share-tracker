class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :destroy]

  http_basic_authenticate_with name: ENV['SHARES_USERNAME'], password: ENV['SHARES_PASSWORD']
  # GET /stocks
  # GET /stocks.json
  def index
    @stocks = Stock.all
  end

  # GET /stocks/1
  # GET /stocks/1.json
  def show
  end

  # GET /stocks/new
  def new
    @stock = Stock.new
  end

  # POST /stocks
  # POST /stocks.json
  def create
    @stock = StockBuilderClerk.new.call(stock_params[:label], stock_params[:url])

    if params[:preview]
      @preview = true
      render action: :new and return
    end

    respond_to do |format|
      if @stock.save
        format.html { redirect_to @stock, notice: 'Stock was successfully created.' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stocks/1
  # DELETE /stocks/1.json
  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to stocks_url, notice: 'Stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def compare_stocks
    ids    = params[:stock_ids].reject { |e| e.blank? }
    stocks = Stock.where(id: ids).includes(:stock_data)
    series = []
    stocks.each do |stock|
      data = {}
      stock.stock_data.each do |point|
        data[point.created_at.to_date] = point.public_send(params[:field])
      end
      series << {
        name: stock.label,
        data: data
      }
    end
    render json: series
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_params
      params.require(:stock).permit(:label, :url)
    end
end
