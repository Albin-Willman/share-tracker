class Api::ApiController < ApplicationController
  http_basic_authenticate_with name: ENV['SHARES_USERNAME'], password: ENV['SHARES_PASSWORD']
end