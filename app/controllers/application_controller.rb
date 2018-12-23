class ApplicationController < ActionController::Base
  def render_json(model)
    render json: model
  end
end
