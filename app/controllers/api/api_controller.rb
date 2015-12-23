class Api::ApiController < ActionController::API
  include ActionController::Serialization
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: ENV['SHARES_USERNAME'], password: ENV['SHARES_PASSWORD']
end