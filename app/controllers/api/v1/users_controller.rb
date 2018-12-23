class Api::V1::UsersController < ApplicationController
  def index
    render_json User.all
  end
end
