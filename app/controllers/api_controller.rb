class ApiController < ApplicationController
  before_action :cors_preflight_check
  after_action :cors_set_access_control_headers

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

  def cor
    # blank section for CORR
    render :text => ''
  end

  private 

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
      headers['Access-Control-Max-Age'] = '1728000'

      render :text => '', :content_type => 'text/plain' and return
    end
  end

end