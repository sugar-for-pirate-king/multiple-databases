class ApplicationController < ActionController::Base

  skip_before_action :verify_authenticity_token

  def render_json(model)
    render json: model
  end
end
