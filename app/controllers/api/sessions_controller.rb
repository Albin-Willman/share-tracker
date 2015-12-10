class Api::SessionsController < Api::ApiController

  def login
    render json: { status: true }
  end
end